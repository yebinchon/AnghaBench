
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* multiCmds; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ maxSize; int * cmds; } ;
typedef TYPE_1__ HttpSqlCmds ;
typedef int HttpSqlCmd ;
typedef TYPE_2__ HttpContext ;



HttpSqlCmd *httpCurrSqlCmd(HttpContext *pContext) {
  HttpSqlCmds *multiCmds = pContext->multiCmds;
  if (multiCmds->size == 0) return ((void*)0);
  if (multiCmds->size > multiCmds->maxSize) return ((void*)0);

  return multiCmds->cmds + multiCmds->size - 1;
}
