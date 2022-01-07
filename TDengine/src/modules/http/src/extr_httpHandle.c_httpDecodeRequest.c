
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pMethod; } ;
struct TYPE_8__ {TYPE_2__ parser; } ;
struct TYPE_6__ {int (* decodeFp ) (TYPE_3__*) ;} ;
typedef TYPE_2__ HttpParser ;
typedef TYPE_3__ HttpContext ;


 int stub1 (TYPE_3__*) ;

bool httpDecodeRequest(HttpContext* pContext) {
  HttpParser* pParser = &pContext->parser;
  if (pParser->pMethod->decodeFp == ((void*)0)) {
    return 0;
  }

  return (*pParser->pMethod->decodeFp)(pContext);
}
