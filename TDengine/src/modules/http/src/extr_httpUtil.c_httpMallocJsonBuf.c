
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * jsonBuf; } ;
typedef int JsonBuf ;
typedef TYPE_1__ HttpContext ;


 scalar_t__ malloc (int) ;

JsonBuf *httpMallocJsonBuf(HttpContext *pContext) {
  if (pContext->jsonBuf == ((void*)0)) {
    pContext->jsonBuf = (JsonBuf *)malloc(sizeof(JsonBuf));
  }

  return pContext->jsonBuf;
}
