
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {TYPE_1__* multiCmds; } ;
struct TYPE_5__ {char* buffer; int bufferSize; int bufferPos; } ;
typedef TYPE_1__ HttpSqlCmds ;
typedef TYPE_2__ HttpContext ;


 int httpReMallocMultiCmdsBuffer (TYPE_2__*,int) ;

int32_t httpAddToSqlCmdBufferTerminal(HttpContext *pContext) {
  HttpSqlCmds *cmd = pContext->multiCmds;
  if (cmd->buffer == ((void*)0)) return -1;

  int remainLength = cmd->bufferSize - cmd->bufferPos;
  if (remainLength < 4096) {
    if (!httpReMallocMultiCmdsBuffer(pContext, cmd->bufferSize * 2)) return -1;
  }

  char *buffer = cmd->buffer + cmd->bufferPos;
  *buffer = 0;
  cmd->bufferPos = cmd->bufferPos + 1;

  remainLength = cmd->bufferSize - cmd->bufferPos;
  if (remainLength < 4096) {
    if (!httpReMallocMultiCmdsBuffer(pContext, cmd->bufferSize * 2)) return -1;
  }

  return (int32_t)(buffer - cmd->buffer);
}
