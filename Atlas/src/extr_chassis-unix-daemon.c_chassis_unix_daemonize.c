
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGHUP ;
 int SIGTSTP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_IGN ;
 int chdir (char*) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int g_assert_not_reached () ;
 int setsid () ;
 int signal (int ,int ) ;
 int umask (int ) ;

void chassis_unix_daemonize(void) {
 if (fork() != 0) exit(0);

 if (setsid() == -1) exit(0);

 signal(SIGHUP, SIG_IGN);

 if (fork() != 0) exit(0);

 chdir("/");

 umask(0);

}
