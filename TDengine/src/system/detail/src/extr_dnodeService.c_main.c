
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_sigaction; int sa_flags; } ;


 int EXIT_FAILURE ;
 int LOG_CONS ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_LOCAL1 ;
 int LOG_NDELAY ;
 int LOG_PID ;
 int SA_SIGINFO ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 char* buildinfo ;
 int closelog () ;
 char* compatible_version ;
 char* configDir ;
 int dnodeCleanUpSystem () ;
 scalar_t__ dnodeInitSystem () ;
 int dnodeParseParameterK () ;
 int exit (int ) ;
 char* gitinfo ;
 int openlog (char*,int,int ) ;
 int printf (char*,char*,...) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int signal_handler ;
 int sleep (int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int syslog (int ,char*) ;
 char* version ;

int main(int argc, char *argv[]) {

  for (int i = 1; i < argc; ++i) {
    if (strcmp(argv[i], "-c") == 0) {
      if (i < argc - 1) {
        strcpy(configDir, argv[++i]);
      } else {
        printf("'-c' requires a parameter, default:%s\n", configDir);
        exit(EXIT_FAILURE);
      }
    } else if (strcmp(argv[i], "-V") == 0) {
      printf("version: %s compatible_version: %s\n", version, compatible_version);
      printf("gitinfo: %s\n", gitinfo);
      printf("buildinfo: %s\n", buildinfo);
      return 0;
    } else if (strcmp(argv[i], "-k") == 0) {
      dnodeParseParameterK();
    }
  }


  struct sigaction act;
  act.sa_flags = SA_SIGINFO;
  act.sa_sigaction = signal_handler;
  sigaction(SIGTERM, &act, ((void*)0));
  sigaction(SIGHUP, &act, ((void*)0));
  sigaction(SIGINT, &act, ((void*)0));
  sigaction(SIGUSR1, &act, ((void*)0));
  sigaction(SIGUSR2, &act, ((void*)0));



  openlog("TDengine:", LOG_PID | LOG_CONS | LOG_NDELAY, LOG_LOCAL1);
  syslog(LOG_INFO, "Starting TDengine service...");


  if (dnodeInitSystem() < 0) {
    syslog(LOG_ERR, "Error initialize TDengine system");
    closelog();

    dnodeCleanUpSystem();
    exit(EXIT_FAILURE);
  }

  syslog(LOG_INFO, "Started TDengine service successfully.");

  while (1) {
    sleep(1000);
  }
}
