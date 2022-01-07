
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * jsonBuf; } ;
typedef TYPE_1__ HttpContext ;


 int free (int *) ;

void httpFreeJsonBuf(HttpContext *pContext) {
  if (pContext->jsonBuf != ((void*)0)) {
    free(pContext->jsonBuf);
    pContext->jsonBuf = 0;
  }
}
