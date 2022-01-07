
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {scalar_t__ nSize; } ;
struct TYPE_9__ {int iPage; scalar_t__ eState; scalar_t__ wrFlag; TYPE_2__** apPage; scalar_t__ validNKey; TYPE_1__ info; scalar_t__* aiIdx; int * pBt; } ;
struct TYPE_8__ {int nCell; scalar_t__ intKey; } ;
typedef TYPE_2__ MemPage ;
typedef int BtShared ;
typedef TYPE_3__ BtCursor ;


 int BTCURSOR_MAX_DEPTH ;
 scalar_t__ CURSOR_VALID ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int cursorHoldsMutex (TYPE_3__*) ;
 int getAndInitPage (int *,int ,TYPE_2__**,int) ;

__attribute__((used)) static int moveToChild(BtCursor *pCur, u32 newPgno){
  int rc;
  int i = pCur->iPage;
  MemPage *pNewPage;
  BtShared *pBt = pCur->pBt;

  assert( cursorHoldsMutex(pCur) );
  assert( pCur->eState==CURSOR_VALID );
  assert( pCur->iPage<BTCURSOR_MAX_DEPTH );
  assert( pCur->iPage>=0 );
  if( pCur->iPage>=(BTCURSOR_MAX_DEPTH-1) ){
    return SQLITE_CORRUPT_BKPT;
  }
  rc = getAndInitPage(pBt, newPgno, &pNewPage, (pCur->wrFlag==0));
  if( rc ) return rc;
  pCur->apPage[i+1] = pNewPage;
  pCur->aiIdx[i+1] = 0;
  pCur->iPage++;

  pCur->info.nSize = 0;
  pCur->validNKey = 0;
  if( pNewPage->nCell<1 || pNewPage->intKey!=pCur->apPage[i]->intKey ){
    return SQLITE_CORRUPT_BKPT;
  }
  return SQLITE_OK;
}
