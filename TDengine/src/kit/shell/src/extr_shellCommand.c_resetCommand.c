
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cursorOffset; int commandSize; int endOffset; int screenOffset; scalar_t__ bufferSize; int command; int buffer; } ;
typedef TYPE_1__ Command ;


 int MAX_COMMAND_SIZE ;
 int assert (int) ;
 int clearScreen (scalar_t__,scalar_t__) ;
 int getMbSizeInfo (char const*,int*,int*) ;
 int memset (int ,int ,int ) ;
 scalar_t__ prompt_size ;
 int showOnScreen (TYPE_1__*) ;
 int strcpy (int ,char const*) ;

void resetCommand(Command *cmd, const char s[]) {
  assert(cmd->cursorOffset <= cmd->commandSize && cmd->endOffset >= cmd->screenOffset);

  clearScreen(cmd->endOffset + prompt_size, cmd->screenOffset + prompt_size);
  memset(cmd->buffer, 0, MAX_COMMAND_SIZE);
  memset(cmd->command, 0, MAX_COMMAND_SIZE);
  strcpy(cmd->command, s);
  int size = 0;
  int width = 0;
  getMbSizeInfo(s, &size, &width);
  cmd->bufferSize = 0;
  cmd->commandSize = size;
  cmd->cursorOffset = size;
  cmd->screenOffset = width;
  cmd->endOffset = width;
  showOnScreen(cmd);
}
