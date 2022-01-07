
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int * data; scalar_t__ pRsp; int qhandle; } ;
struct TYPE_6__ {TYPE_1__ res; } ;
typedef TYPE_1__ SSqlRes ;
typedef TYPE_2__ SSqlObj ;


 int tscResetForNextRetrieve (TYPE_1__*) ;

int tscProcessQueryRsp(SSqlObj *pSql) {
  SSqlRes *pRes = &pSql->res;

  pRes->qhandle = *((uint64_t *)pRes->pRsp);
  pRes->data = ((void*)0);
  tscResetForNextRetrieve(pRes);
  return 0;
}
