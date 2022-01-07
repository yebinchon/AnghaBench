
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmd ;
struct TYPE_6__ {char* buffer; char* command; } ;
typedef int TAOS ;
typedef TYPE_1__ Command ;


 int MAX_COMMAND_SIZE ;
 scalar_t__ calloc (int,int ) ;
 int free (char*) ;
 char getchar () ;
 int insertChar (TYPE_1__*,char) ;
 int isReadyGo (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int shellPrintContinuePrompt () ;
 int sprintf (char*,char*,char*,char*) ;
 int updateBuffer (TYPE_1__*) ;

void shellReadCommand(TAOS *con, char command[]) {
  Command cmd;
  memset(&cmd, 0, sizeof(cmd));
  cmd.buffer = (char *)calloc(1, MAX_COMMAND_SIZE);
  cmd.command = (char *)calloc(1, MAX_COMMAND_SIZE);


  char c;
  while (1) {
    c = getchar();

    switch (c) {
      case '\n':
      case '\r':
        if (isReadyGo(&cmd)) {
          sprintf(command, "%s%s", cmd.buffer, cmd.command);
          free(cmd.buffer);
          cmd.buffer = ((void*)0);
          free(cmd.command);
          cmd.command = ((void*)0);
          return;
        } else {
          shellPrintContinuePrompt();
          updateBuffer(&cmd);
        }
        break;
      default:
        insertChar(&cmd, c);
    }
  }
}
