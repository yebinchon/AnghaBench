
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cursorOffset; scalar_t__ commandSize; scalar_t__ endOffset; scalar_t__ screenOffset; int command; } ;
typedef TYPE_1__ Command ;


 int assert (int) ;
 int clearScreen (scalar_t__,scalar_t__) ;
 int getPrevCharSize (int ,scalar_t__,int*,int*) ;
 scalar_t__ prompt_size ;
 int showOnScreen (TYPE_1__*) ;

void moveCursorLeft(Command *cmd) {
  assert(cmd->cursorOffset <= cmd->commandSize && cmd->endOffset >= cmd->screenOffset);

  if (cmd->cursorOffset > 0) {
    clearScreen(cmd->endOffset + prompt_size, cmd->screenOffset + prompt_size);
    int size = 0;
    int width = 0;
    getPrevCharSize(cmd->command, cmd->cursorOffset, &size, &width);
    cmd->cursorOffset -= size;
    cmd->screenOffset -= width;
    showOnScreen(cmd);
  }
}
