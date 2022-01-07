
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int buf ;


 int AF_UNIX ;
 int O_RDWR ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_IGN ;
 int SOCK_STREAM ;
 int T_ASSERT_POSIX_SUCCESS (int,int *) ;
 int close (int) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 scalar_t__ getpid () ;
 int handle_sigttin ;
 int open (char*,int ) ;
 int read (int,char*,int) ;
 int setpgid (int ,int ) ;
 int setsid () ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int socketpair (int ,int ,int ,int*) ;
 int tcsetpgrp (int,scalar_t__) ;
 int write (int,char*,int) ;

int
get_new_session_and_terminal_and_fork_child_to_read(char *pty_name)
{
 int sock_fd[2];
 int pty_fd;
 pid_t pid;
 char buf[10];





 T_ASSERT_POSIX_SUCCESS(socketpair(AF_UNIX, SOCK_STREAM, 0, sock_fd),
    ((void*)0));





 T_ASSERT_POSIX_SUCCESS(setsid(), ((void*)0));


 T_ASSERT_POSIX_SUCCESS(pty_fd = open(pty_name, O_RDWR), ((void*)0));

 T_ASSERT_POSIX_SUCCESS(pid = fork(), ((void*)0));

 if (pid == 0) {
  int pty_fd_child;
  char buf[10];

  T_ASSERT_POSIX_SUCCESS(close(sock_fd[0]), ((void*)0));
  T_ASSERT_POSIX_SUCCESS(close(pty_fd), ((void*)0));


  T_ASSERT_POSIX_SUCCESS(setpgid(0, 0), ((void*)0));

  T_ASSERT_POSIX_SUCCESS(pty_fd_child = open(pty_name, O_RDWR),
      ((void*)0));


  write(sock_fd[1], "done", sizeof("done"));


  read(sock_fd[1], buf, sizeof(buf));
  signal(SIGTTIN, handle_sigttin);
  (void)read(pty_fd_child, buf, sizeof(buf));




  exit(0);
 }

 T_ASSERT_POSIX_SUCCESS(close(sock_fd[1]), ((void*)0));


 T_ASSERT_POSIX_SUCCESS(read(sock_fd[0], buf, sizeof(buf)), ((void*)0));
 T_ASSERT_POSIX_SUCCESS(tcsetpgrp(pty_fd, pid), ((void*)0));


 T_ASSERT_POSIX_SUCCESS(write(sock_fd[0], "done", sizeof("done")), ((void*)0));






 sleep(1);
 signal(SIGTTOU, SIG_IGN);
 T_ASSERT_POSIX_SUCCESS(tcsetpgrp(pty_fd, getpid()), ((void*)0));

 return (0);
}
