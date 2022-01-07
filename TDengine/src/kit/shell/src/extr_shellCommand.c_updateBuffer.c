
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cursorOffset; scalar_t__ commandSize; scalar_t__ endOffset; scalar_t__ screenOffset; char* buffer; char* command; int bufferSize; } ;
typedef TYPE_1__ Command ;


 int MAX_COMMAND_SIZE ;
 int REG_EXTENDED ;
 int assert (int) ;
 int memset (char*,int ,int ) ;
 scalar_t__ regex_match (char*,char*,int ) ;
 int showOnScreen (TYPE_1__*) ;
 int strcat (char*,char*) ;

void updateBuffer(Command *cmd) {
  assert(cmd->cursorOffset <= cmd->commandSize && cmd->endOffset >= cmd->screenOffset);

  if (regex_match(cmd->buffer, "(\\s+$)|(^$)", REG_EXTENDED)) strcat(cmd->command, " ");
  strcat(cmd->buffer, cmd->command);
  cmd->bufferSize += cmd->commandSize;

  memset(cmd->command, 0, MAX_COMMAND_SIZE);
  cmd->cursorOffset = 0;
  cmd->screenOffset = 0;
  cmd->commandSize = 0;
  cmd->endOffset = 0;
  showOnScreen(cmd);
}
