
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cursorOffset; char* command; } ;
typedef TYPE_1__ Command ;


 scalar_t__ MAX_COMMAND_SIZE ;
 int fprintf (int ,char*,scalar_t__) ;
 int stdout ;

void insertChar(Command *cmd, char c) {

  if (cmd->cursorOffset >= MAX_COMMAND_SIZE) {
    fprintf(stdout, "sql is larger than %d bytes", MAX_COMMAND_SIZE);
    return;
  }

  cmd->command[cmd->cursorOffset++] = c;
}
