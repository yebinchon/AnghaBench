
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ fromMemPool; } ;
struct TYPE_7__ {int pContextPool; } ;
typedef TYPE_1__ HttpServer ;
typedef TYPE_2__ HttpContext ;


 int httpTrace (char*,TYPE_2__*) ;
 int taosMemPoolFree (int ,char*) ;
 int tfree (TYPE_2__*) ;

void httpFreeContext(HttpServer *pServer, HttpContext *pContext) {
  if (pContext->fromMemPool) {
    httpTrace("context:%p, is freed from mempool", pContext);
    taosMemPoolFree(pServer->pContextPool, (char *)pContext);
  } else {
    httpTrace("context:%p, is freed from raw memory", pContext);
    tfree(pContext);
  }
}
