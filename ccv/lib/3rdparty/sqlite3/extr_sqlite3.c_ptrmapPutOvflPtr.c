
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {scalar_t__ nLocal; scalar_t__ nPayload; int nSize; } ;
struct TYPE_6__ {int pgno; int pBt; int (* xParseCell ) (TYPE_1__*,int *,TYPE_2__*) ;} ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ CellInfo ;


 int PTRMAP_OVERFLOW1 ;
 int assert (int) ;
 int get4byte (int *) ;
 int ptrmapPut (int ,int ,int ,int ,int*) ;
 int stub1 (TYPE_1__*,int *,TYPE_2__*) ;

__attribute__((used)) static void ptrmapPutOvflPtr(MemPage *pPage, u8 *pCell, int *pRC){
  CellInfo info;
  if( *pRC ) return;
  assert( pCell!=0 );
  pPage->xParseCell(pPage, pCell, &info);
  if( info.nLocal<info.nPayload ){
    Pgno ovfl = get4byte(&pCell[info.nSize-4]);
    ptrmapPut(pPage->pBt, ovfl, PTRMAP_OVERFLOW1, pPage->pgno, pRC);
  }
}
