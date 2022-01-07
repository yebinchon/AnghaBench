
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int STDIN_FILENO ;
 int TIMEOUT_SECS ;
 int child_tty_client () ;
 int exit (int) ;
 scalar_t__ fork () ;
 int setpgid (scalar_t__,scalar_t__) ;
 int sleep (int ) ;
 int tcsetpgrp (int ,scalar_t__) ;

__attribute__((used)) static void
pty_master(void)
{
 pid_t child_pid;
 int ret;

 child_pid = fork();
 if (child_pid == 0) {
  child_tty_client();
 }
 ret = setpgid(child_pid, child_pid);
 if (ret < 0) {
  exit(1);
 }
 ret = tcsetpgrp(STDIN_FILENO, child_pid);
 if (ret < 0) {
  exit(1);
 }

 sleep(TIMEOUT_SECS);
 exit(1);
}
