
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* multiCmds; } ;
struct TYPE_8__ {int cmdState; int cmdReturnType; int cmdType; } ;
struct TYPE_7__ {int size; int maxSize; TYPE_2__* cmds; } ;
typedef TYPE_1__ HttpSqlCmds ;
typedef TYPE_2__ HttpSqlCmd ;
typedef TYPE_3__ HttpContext ;


 int HTTP_CMD_RETURN_TYPE_WITH_RETURN ;
 int HTTP_CMD_STATE_NOT_RUN_YET ;
 int HTTP_CMD_TYPE_UN_SPECIFIED ;
 int httpReMallocMultiCmdsSize (TYPE_3__*,int) ;

HttpSqlCmd *httpNewSqlCmd(HttpContext *pContext) {
  HttpSqlCmds *multiCmds = pContext->multiCmds;
  if (multiCmds->size >= multiCmds->maxSize) {
    if (!httpReMallocMultiCmdsSize(pContext, 2 * multiCmds->maxSize)) return ((void*)0);
  }

  HttpSqlCmd *cmd = multiCmds->cmds + multiCmds->size++;
  cmd->cmdType = HTTP_CMD_TYPE_UN_SPECIFIED;
  cmd->cmdReturnType = HTTP_CMD_RETURN_TYPE_WITH_RETURN;
  cmd->cmdState = HTTP_CMD_STATE_NOT_RUN_YET;

  return cmd;
}
