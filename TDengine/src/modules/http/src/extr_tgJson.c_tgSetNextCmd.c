
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct HttpContext {int ipstr; int fd; TYPE_1__* multiCmds; } ;
typedef scalar_t__ int16_t ;
struct TYPE_5__ {int cmdType; int tagNum; int cmdReturnType; int cmdState; } ;
struct TYPE_4__ {scalar_t__ pos; } ;
typedef TYPE_1__ HttpSqlCmds ;
typedef TYPE_2__ HttpSqlCmd ;


 int HTTP_CMD_TYPE_CREATE_DB ;
 int HTTP_CMD_TYPE_CREATE_STBALE ;
 int HTTP_CMD_TYPE_INSERT ;
 int httpTrace (char*,struct HttpContext*,int ,int ,scalar_t__,int,int ,int ,int ,int ) ;

void tgSetNextCmd(struct HttpContext *pContext, HttpSqlCmd *cmd, int code) {
  HttpSqlCmds *multiCmds = pContext->multiCmds;
  httpTrace("context:%p, fd:%d, ip:%s, get telegraf next command, pos:%d, code:%d, state:%d, type:%d, rettype:%d, tags:%d",
            pContext, pContext->fd, pContext->ipstr, multiCmds->pos, code, cmd->cmdState, cmd->cmdType,
            cmd->cmdReturnType, cmd->tagNum);

  if (cmd->cmdType == HTTP_CMD_TYPE_INSERT) {
    multiCmds->pos = (int16_t)(multiCmds->pos + 2);
  } else if (cmd->cmdType == HTTP_CMD_TYPE_CREATE_DB) {
    multiCmds->pos++;
  } else if (cmd->cmdType == HTTP_CMD_TYPE_CREATE_STBALE) {
    multiCmds->pos++;
  } else {
    multiCmds->pos++;
  }
}
