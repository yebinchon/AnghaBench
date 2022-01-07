
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * timer; int ipstr; } ;
typedef TYPE_1__ HttpContext ;


 int httpTrace (char*,TYPE_1__*,int ,int *) ;
 int taosTmrStopA (int **) ;

void httpCleanUpContextTimer(HttpContext *pContext) {
  if (pContext->timer != ((void*)0)) {
    taosTmrStopA(&pContext->timer);
    httpTrace("context:%p, ip:%s, close timer:%p", pContext, pContext->ipstr, pContext->timer);
    pContext->timer = ((void*)0);
  }
}
