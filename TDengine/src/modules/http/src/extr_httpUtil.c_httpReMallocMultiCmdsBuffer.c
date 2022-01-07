
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int user; int ipstr; int fd; TYPE_1__* multiCmds; } ;
struct TYPE_5__ {char* buffer; int bufferSize; } ;
typedef TYPE_1__ HttpSqlCmds ;
typedef TYPE_2__ HttpContext ;


 int HTTP_MAX_BUFFER_SIZE ;
 int httpError (char*,TYPE_2__*,int ,int ,int ,int,...) ;
 int memset (char*,int ,size_t) ;
 scalar_t__ realloc (char*,size_t) ;

bool httpReMallocMultiCmdsBuffer(HttpContext *pContext, int bufferSize) {
  HttpSqlCmds *multiCmds = pContext->multiCmds;

  if (bufferSize > HTTP_MAX_BUFFER_SIZE) {
    httpError("context:%p, fd:%d, ip:%s, user:%s, mulitcmd buffer size:%d large then %d",
              pContext, pContext->fd, pContext->ipstr, pContext->user, bufferSize, HTTP_MAX_BUFFER_SIZE);
    return 0;
  }

  multiCmds->buffer = (char *)realloc(multiCmds->buffer, (size_t)bufferSize);
  if (multiCmds->buffer == ((void*)0)) {
    httpError("context:%p, fd:%d, ip:%s, user:%s, malloc buffer:%d error", pContext, pContext->fd, pContext->ipstr,
              pContext->user, bufferSize);
    return 0;
  }
  memset(multiCmds->buffer + multiCmds->bufferSize, 0, (size_t)(bufferSize - multiCmds->bufferSize));
  multiCmds->bufferSize = bufferSize;

  return 1;
}
