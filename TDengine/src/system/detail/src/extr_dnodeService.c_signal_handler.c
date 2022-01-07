
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_pid; } ;
typedef TYPE_1__ siginfo_t ;


 int EXIT_SUCCESS ;
 int LOG_INFO ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int closelog () ;
 int dPrint (char*,...) ;
 int dnodeCleanUpSystem () ;
 int exit (int ) ;
 int syslog (int ,char*,...) ;
 int tsCfgDynamicOptions (char*) ;

void signal_handler(int signum, siginfo_t *sigInfo, void *context) {
  if (signum == SIGUSR1) {
    tsCfgDynamicOptions("debugFlag 135");
    return;
  }
  if (signum == SIGUSR2) {
    tsCfgDynamicOptions("resetlog");
    return;
  }
  syslog(LOG_INFO, "Shut down signal is %d", signum);
  syslog(LOG_INFO, "Shutting down TDengine service...");

  dPrint("shut down signal is %d, sender PID:%d", signum, sigInfo->si_pid);
  dnodeCleanUpSystem();

  syslog(LOG_INFO, "Shut down TDengine service successfully");
  dPrint("TDengine is shut down!");
  closelog();
  exit(EXIT_SUCCESS);
}
