
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VdbeCursor ;
struct TYPE_5__ {void* pVal; struct TYPE_5__* pNext; int nVal; } ;
typedef TYPE_1__ SorterRecord ;


 int vdbeSorterCompare (int const*,int ,void*,int ,void*,int ,int*) ;

__attribute__((used)) static void vdbeSorterMerge(
  const VdbeCursor *pCsr,
  SorterRecord *p1,
  SorterRecord *p2,
  SorterRecord **ppOut
){
  SorterRecord *pFinal = 0;
  SorterRecord **pp = &pFinal;
  void *pVal2 = p2 ? p2->pVal : 0;

  while( p1 && p2 ){
    int res;
    vdbeSorterCompare(pCsr, 0, p1->pVal, p1->nVal, pVal2, p2->nVal, &res);
    if( res<=0 ){
      *pp = p1;
      pp = &p1->pNext;
      p1 = p1->pNext;
      pVal2 = 0;
    }else{
      *pp = p2;
       pp = &p2->pNext;
      p2 = p2->pNext;
      if( p2==0 ) break;
      pVal2 = p2->pVal;
    }
  }
  *pp = p1 ? p1 : p2;
  *ppOut = pFinal;
}
