
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_6__ {int user; int ipstr; int fd; TYPE_1__* multiCmds; } ;
struct TYPE_5__ {int maxSize; int * cmds; } ;
typedef TYPE_1__ HttpSqlCmds ;
typedef int HttpSqlCmd ;
typedef TYPE_2__ HttpContext ;


 int HTTP_MAX_CMD_SIZE ;
 int httpError (char*,TYPE_2__*,int ,int ,int ,int,...) ;
 int memset (int *,int ,size_t) ;
 scalar_t__ realloc (int *,size_t) ;

bool httpReMallocMultiCmdsSize(HttpContext *pContext, int cmdSize) {
  HttpSqlCmds *multiCmds = pContext->multiCmds;

  if (cmdSize > HTTP_MAX_CMD_SIZE) {
    httpError("context:%p, fd:%d, ip:%s, user:%s, mulitcmd size:%d large then %d", pContext, pContext->fd,
              pContext->ipstr, pContext->user, cmdSize, HTTP_MAX_CMD_SIZE);
    return 0;
  }

  multiCmds->cmds = (HttpSqlCmd *)realloc(multiCmds->cmds, (size_t)cmdSize * sizeof(HttpSqlCmd));
  if (multiCmds->cmds == ((void*)0)) {
    httpError("context:%p, fd:%d, ip:%s, user:%s, malloc cmds:%d error", pContext, pContext->fd, pContext->ipstr,
              pContext->user, cmdSize);
    return 0;
  }
  memset(multiCmds->cmds + multiCmds->maxSize * (int16_t)sizeof(HttpSqlCmd), 0,
         (size_t)(cmdSize - multiCmds->maxSize) * sizeof(HttpSqlCmd));
  multiCmds->maxSize = (int16_t)cmdSize;

  return 1;
}
