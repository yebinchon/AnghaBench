
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {scalar_t__ cursorOffset; scalar_t__ commandSize; scalar_t__ endOffset; scalar_t__ screenOffset; scalar_t__ command; } ;
typedef TYPE_1__ Command ;


 int assert (int) ;
 int clearScreen (scalar_t__,scalar_t__) ;
 scalar_t__ mbtowc (int *,char*,int) ;
 int memcpy (scalar_t__,char*,int) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ prompt_size ;
 int showOnScreen (TYPE_1__*) ;
 scalar_t__ wcwidth (int ) ;

void insertChar(Command *cmd, char *c, int size) {
  assert(cmd->cursorOffset <= cmd->commandSize && cmd->endOffset >= cmd->screenOffset);

  wchar_t wc;
  if (mbtowc(&wc, c, size) < 0) return;

  clearScreen(cmd->endOffset + prompt_size, cmd->screenOffset + prompt_size);

  memmove(cmd->command + cmd->cursorOffset + size, cmd->command + cmd->cursorOffset,
          cmd->commandSize - cmd->cursorOffset);
  memcpy(cmd->command + cmd->cursorOffset, c, size);

  cmd->commandSize += size;
  cmd->cursorOffset += size;
  cmd->screenOffset += wcwidth(wc);
  cmd->endOffset += wcwidth(wc);
  showOnScreen(cmd);
}
