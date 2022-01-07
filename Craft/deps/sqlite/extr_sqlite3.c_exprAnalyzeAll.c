
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nTerm; } ;
typedef TYPE_1__ WhereClause ;
typedef int SrcList ;


 int exprAnalyze (int *,TYPE_1__*,int) ;

__attribute__((used)) static void exprAnalyzeAll(
  SrcList *pTabList,
  WhereClause *pWC
){
  int i;
  for(i=pWC->nTerm-1; i>=0; i--){
    exprAnalyze(pTabList, pWC, i);
  }
}
