
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_8__ {int nKey; int nData; int nPayload; int nHeader; int nSize; int nLocal; int iOverflow; int * pCell; } ;
struct TYPE_7__ {int leaf; int childPtrSize; int maxLocal; int minLocal; TYPE_1__* pBt; scalar_t__ hasData; scalar_t__ intKey; } ;
struct TYPE_6__ {int usableSize; int mutex; } ;
typedef TYPE_2__ MemPage ;
typedef TYPE_3__ CellInfo ;


 int assert (int) ;
 scalar_t__ getVarint (int *,int *) ;
 scalar_t__ getVarint32 (int *,int) ;
 scalar_t__ likely (int) ;
 int sqlite3_mutex_held (int ) ;
 int testcase (int) ;

__attribute__((used)) static void btreeParseCellPtr(
  MemPage *pPage,
  u8 *pCell,
  CellInfo *pInfo
){
  u16 n;
  u32 nPayload;

  assert( sqlite3_mutex_held(pPage->pBt->mutex) );

  pInfo->pCell = pCell;
  assert( pPage->leaf==0 || pPage->leaf==1 );
  n = pPage->childPtrSize;
  assert( n==4-4*pPage->leaf );
  if( pPage->intKey ){
    if( pPage->hasData ){
      n += getVarint32(&pCell[n], nPayload);
    }else{
      nPayload = 0;
    }
    n += getVarint(&pCell[n], (u64*)&pInfo->nKey);
    pInfo->nData = nPayload;
  }else{
    pInfo->nData = 0;
    n += getVarint32(&pCell[n], nPayload);
    pInfo->nKey = nPayload;
  }
  pInfo->nPayload = nPayload;
  pInfo->nHeader = n;
  testcase( nPayload==pPage->maxLocal );
  testcase( nPayload==pPage->maxLocal+1 );
  if( likely(nPayload<=pPage->maxLocal) ){



    if( (pInfo->nSize = (u16)(n+nPayload))<4 ) pInfo->nSize = 4;
    pInfo->nLocal = (u16)nPayload;
    pInfo->iOverflow = 0;
  }else{
    int minLocal;
    int maxLocal;
    int surplus;

    minLocal = pPage->minLocal;
    maxLocal = pPage->maxLocal;
    surplus = minLocal + (nPayload - minLocal)%(pPage->pBt->usableSize - 4);
    testcase( surplus==maxLocal );
    testcase( surplus==maxLocal+1 );
    if( surplus <= maxLocal ){
      pInfo->nLocal = (u16)surplus;
    }else{
      pInfo->nLocal = (u16)minLocal;
    }
    pInfo->iOverflow = (u16)(pInfo->nLocal + n);
    pInfo->nSize = pInfo->iOverflow + 4;
  }
}
