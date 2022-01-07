
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int orconf; struct TYPE_13__* pNext; TYPE_2__* pTrigger; } ;
typedef TYPE_1__ TriggerPrg ;
struct TYPE_14__ {scalar_t__ zName; } ;
typedef TYPE_2__ Trigger ;
typedef int Table ;
struct TYPE_15__ {TYPE_1__* pTriggerPrg; } ;
typedef TYPE_3__ Parse ;


 int assert (int) ;
 TYPE_1__* codeRowTrigger (TYPE_3__*,TYPE_2__*,int *,int) ;
 TYPE_3__* sqlite3ParseToplevel (TYPE_3__*) ;
 int * tableOfTrigger (TYPE_2__*) ;

__attribute__((used)) static TriggerPrg *getRowTrigger(
  Parse *pParse,
  Trigger *pTrigger,
  Table *pTab,
  int orconf
){
  Parse *pRoot = sqlite3ParseToplevel(pParse);
  TriggerPrg *pPrg;

  assert( pTrigger->zName==0 || pTab==tableOfTrigger(pTrigger) );





  for(pPrg=pRoot->pTriggerPrg;
      pPrg && (pPrg->pTrigger!=pTrigger || pPrg->orconf!=orconf);
      pPrg=pPrg->pNext
  );


  if( !pPrg ){
    pPrg = codeRowTrigger(pParse, pTrigger, pTab, orconf);
  }

  return pPrg;
}
