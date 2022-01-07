
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int child_should_exit ;
 int dbg (char*,int ,int) ;
 int getpid () ;

__attribute__((used)) static void child_sighandler(int sig)
{
 (void)sig;
 dbg("PID: %d received sig %d", getpid(), sig);
 child_should_exit = 1;
}
