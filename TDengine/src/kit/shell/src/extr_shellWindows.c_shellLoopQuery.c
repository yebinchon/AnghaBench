
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAOS ;


 int MAX_COMMAND_SIZE ;
 char* malloc (int ) ;
 int memset (char*,int ,int ) ;
 int shellPrintPrompt () ;
 int shellReadCommand (int *,char*) ;
 int shellRunCommand (int *,char*) ;

void *shellLoopQuery(void *arg) {
  TAOS *con = (TAOS *)arg;
  char *command = malloc(MAX_COMMAND_SIZE);
  if (command == ((void*)0)) return ((void*)0);

  while (1) {
    memset(command, 0, MAX_COMMAND_SIZE);
    shellPrintPrompt();


    shellReadCommand(con, command);


    shellRunCommand(con, command);
  }

  return ((void*)0);
}
