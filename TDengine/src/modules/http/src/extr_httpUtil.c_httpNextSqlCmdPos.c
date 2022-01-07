
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* multiCmds; } ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ HttpSqlCmds ;
typedef TYPE_2__ HttpContext ;



int httpNextSqlCmdPos(HttpContext *pContext) {
  HttpSqlCmds *multiCmds = pContext->multiCmds;
  return multiCmds->size;
}
