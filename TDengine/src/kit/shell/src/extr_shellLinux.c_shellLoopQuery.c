
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAOS ;


 int MAX_COMMAND_SIZE ;
 int cleanup_handler ;
 int get_old_terminal_mode (int *) ;
 scalar_t__ indicator ;
 char* malloc (int ) ;
 int memset (char*,int ,int ) ;
 int oldtio ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,int *) ;
 int reset_terminal_mode () ;
 int set_terminal_mode () ;
 int shellReadCommand (int *,char*) ;
 int shellRunCommand (int *,char*) ;

void *shellLoopQuery(void *arg) {
  if (indicator) {
    get_old_terminal_mode(&oldtio);
    indicator = 0;
  }

  TAOS *con = (TAOS *)arg;

  pthread_cleanup_push(cleanup_handler, ((void*)0));

  char *command = malloc(MAX_COMMAND_SIZE);

  while (1) {


    memset(command, 0, MAX_COMMAND_SIZE);
    set_terminal_mode();
    shellReadCommand(con, command);
    reset_terminal_mode();

    if (command != ((void*)0)) {

      shellRunCommand(con, command);
    }
  }

  pthread_cleanup_pop(1);

  return ((void*)0);
}
