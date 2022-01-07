
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; } ;


 int EXIT_FAILURE ;
 int SIGINT ;
 int SIGTERM ;
 int args ;
 int checkVersion () ;
 int * con ;
 int exit (int ) ;
 int interruptHandler ;
 int pid ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int shellGetGrantInfo (int *) ;
 int * shellInit (int *) ;
 int shellLoopQuery ;
 int shellParseArgument (int,char**,int *) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int taos_error (int *) ;

int main(int argc, char* argv[]) {


  if (!checkVersion()) {
    exit(EXIT_FAILURE);
  }

  shellParseArgument(argc, argv, &args);


  con = shellInit(&args);
  if (con == ((void*)0)) {
    taos_error(con);
    exit(EXIT_FAILURE);
  }


  struct sigaction act;
  act.sa_handler = interruptHandler;
  sigaction(SIGTERM, &act, ((void*)0));
  sigaction(SIGINT, &act, ((void*)0));


  shellGetGrantInfo(con);


  while (1) {
    pthread_create(&pid, ((void*)0), shellLoopQuery, con);
    pthread_join(pid, ((void*)0));
  }
  return 0;
}
