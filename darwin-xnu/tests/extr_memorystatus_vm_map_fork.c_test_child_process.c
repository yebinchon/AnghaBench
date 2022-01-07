
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage {int dummy; } ;
typedef int pid_t ;


 int SIGCONT ;
 int T_ASSERT_EQ (int ,int ,char*,int ,int ) ;
 int T_ASSERT_POSIX_SUCCESS (int,char*,int ) ;
 int T_LOG (char*,int ) ;
 int T_QUIET ;
 int kill (int ,int ) ;
 int wait4 (int ,int*,int ,struct rusage*) ;

__attribute__((used)) static void
test_child_process(pid_t child_pid, int *status, struct rusage *ru)
{
 int err = 0;
 pid_t got_pid;

 T_LOG("  continuing child[%d]\n", child_pid);

 err = kill(child_pid, SIGCONT);
 T_QUIET; T_ASSERT_POSIX_SUCCESS(err, "  kill(%d, SIGCONT) failed", child_pid);

 T_LOG("  waiting for child[%d] to exit", child_pid);

 got_pid = wait4(child_pid, status, 0, ru);
 T_QUIET; T_ASSERT_EQ(child_pid, got_pid, "  wait4(%d, ...) returned %d", child_pid, got_pid);
}
