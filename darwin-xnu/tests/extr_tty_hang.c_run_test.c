
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int F_SETFL ;
 int O_NOCTTY ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int T_ASSERT_NOTNULL (char*,int *) ;
 int T_ASSERT_POSIX_SUCCESS (scalar_t__,int *) ;
 int T_FAIL (char*,int) ;
 int T_LOG (char*,char*) ;
 int T_PASS (char*) ;
 int T_QUIET ;
 int T_SETUPBEGIN ;
 int T_SETUPEND ;
 int T_WITH_ERRNO ;
 scalar_t__ close (int) ;
 int dt_waitpid (scalar_t__,int*,int*,int ) ;
 int exit (int ) ;
 int fcntl (int,int ,int ) ;
 scalar_t__ fork () ;
 int get_new_session_and_terminal_and_fork_child_to_read (char*) ;
 scalar_t__ grantpt (int) ;
 int posix_openpt (int) ;
 char* ptsname (int) ;
 scalar_t__ revoke (char*) ;
 int strsignal (int) ;
 scalar_t__ unlockpt (int) ;

void
run_test(int do_revoke)
{
 int master_fd;
 char *slave_pty;
 pid_t pid;

 T_WITH_ERRNO;
 T_QUIET;

 T_SETUPBEGIN;

 slave_pty= ((void*)0);
 T_ASSERT_POSIX_SUCCESS(master_fd = posix_openpt(O_RDWR | O_NOCTTY),
     ((void*)0));
 (void)fcntl(master_fd, F_SETFL, O_NONBLOCK);
 T_ASSERT_POSIX_SUCCESS(grantpt(master_fd), ((void*)0));
 T_ASSERT_POSIX_SUCCESS(unlockpt(master_fd), ((void*)0));
 slave_pty= ptsname(master_fd);
 T_ASSERT_NOTNULL(slave_pty, ((void*)0));
 T_LOG("slave pty is %s\n", slave_pty);

 T_SETUPEND;







 T_ASSERT_POSIX_SUCCESS(pid = fork(), ((void*)0));

 if (pid == 0) {
  T_ASSERT_POSIX_SUCCESS(close(master_fd), ((void*)0));
  get_new_session_and_terminal_and_fork_child_to_read(slave_pty);
  if (do_revoke) {

   T_ASSERT_POSIX_SUCCESS(revoke(slave_pty), ((void*)0));
  }
  exit(0);
 }

 int status;
 int sig;

 dt_waitpid(pid, &status, &sig, 0);
 if (sig) {
  T_FAIL("Test failed because child received signal %s\n",
         strsignal(sig));
 } else if (status) {
  T_FAIL("Test failed because child exited with status %d\n",
         status);
 } else {
  T_PASS("test_passed\n");
 }




}
