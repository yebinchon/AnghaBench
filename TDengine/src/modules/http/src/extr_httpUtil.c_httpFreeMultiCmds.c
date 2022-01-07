
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* cmds; struct TYPE_5__* buffer; } ;
struct TYPE_4__ {TYPE_3__* multiCmds; } ;
typedef TYPE_1__ HttpContext ;


 int free (TYPE_3__*) ;

void httpFreeMultiCmds(HttpContext *pContext) {
  if (pContext->multiCmds != ((void*)0)) {
    if (pContext->multiCmds->buffer != ((void*)0)) free(pContext->multiCmds->buffer);
    if (pContext->multiCmds->cmds != ((void*)0)) free(pContext->multiCmds->cmds);
    free(pContext->multiCmds);
    pContext->multiCmds = ((void*)0);
  }
}
