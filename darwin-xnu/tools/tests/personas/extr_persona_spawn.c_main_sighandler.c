
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGCHLD ;
 int dbg (char*,int ,int) ;
 int g_nchildren ;
 int getpid () ;

__attribute__((used)) static void main_sighandler(int sig)
{
 dbg("PID: %d received sig %d", getpid(), sig);
 if (sig == SIGCHLD) {
  --g_nchildren;
 }
}
