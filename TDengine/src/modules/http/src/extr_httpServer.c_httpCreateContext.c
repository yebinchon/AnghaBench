
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fromMemPool; int state; int lastAccessTime; int httpVersion; struct TYPE_8__* signature; } ;
struct TYPE_7__ {int pContextPool; } ;
typedef TYPE_1__ HttpServer ;
typedef TYPE_2__ HttpContext ;


 int HTTP_CONTEXT_STATE_READY ;
 int HTTP_VERSION_10 ;
 int httpTrace (char*,TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int taosGetTimestampSec () ;
 scalar_t__ taosMemPoolMalloc (int ) ;

HttpContext *httpCreateContext(HttpServer *pServer) {
  HttpContext *pContext = (HttpContext *)taosMemPoolMalloc(pServer->pContextPool);
  if (pContext != ((void*)0)) {
    pContext->fromMemPool = 1;
    httpTrace("context:%p, is malloced from mempool", pContext);
  } else {
    pContext = (HttpContext *)malloc(sizeof(HttpContext));
    if (pContext == ((void*)0)) {
      return ((void*)0);
    } else {
      memset(pContext, 0, sizeof(HttpContext));
    }
    httpTrace("context:%p, is malloced from raw memory", pContext);
  }

  pContext->signature = pContext;
  pContext->httpVersion = HTTP_VERSION_10;
  pContext->lastAccessTime = taosGetTimestampSec();
  pContext->state = HTTP_CONTEXT_STATE_READY;
  return pContext;
}
