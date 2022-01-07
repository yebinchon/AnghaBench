
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct yColCache {scalar_t__ tempReg; int iReg; } ;
struct TYPE_3__ {scalar_t__ nTempReg; int * aTempReg; } ;
typedef TYPE_1__ Parse ;


 scalar_t__ ArraySize (int *) ;

__attribute__((used)) static void cacheEntryClear(Parse *pParse, struct yColCache *p){
  if( p->tempReg ){
    if( pParse->nTempReg<ArraySize(pParse->aTempReg) ){
      pParse->aTempReg[pParse->nTempReg++] = p->iReg;
    }
    p->tempReg = 0;
  }
}
