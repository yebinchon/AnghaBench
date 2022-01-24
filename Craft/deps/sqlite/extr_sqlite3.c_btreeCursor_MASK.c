#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct KeyInfo {int dummy; } ;
struct TYPE_14__ {int iPage; scalar_t__ cachedRowid; int /*<<< orphan*/  eState; struct TYPE_14__* pPrev; struct TYPE_14__* pNext; scalar_t__ wrFlag; TYPE_3__* pBt; TYPE_2__* pBtree; struct KeyInfo* pKeyInfo; scalar_t__ pgnoRoot; } ;
struct TYPE_13__ {int btsFlags; TYPE_4__* pCursor; TYPE_1__* pPage1; } ;
struct TYPE_12__ {scalar_t__ inTrans; TYPE_3__* pBt; } ;
struct TYPE_11__ {scalar_t__ aData; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_2__ Btree ;
typedef  TYPE_3__ BtShared ;
typedef  TYPE_4__ BtCursor ;

/* Variables and functions */
 int BTS_READ_ONLY ; 
 int /*<<< orphan*/  CURSOR_INVALID ; 
 scalar_t__ FUNC0 (int) ; 
 int SQLITE_OK ; 
 int SQLITE_READONLY ; 
 scalar_t__ TRANS_NONE ; 
 scalar_t__ TRANS_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (TYPE_2__*,int,int,int) ; 
 int FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(
  Btree *p,                              /* The btree */
  int iTable,                            /* Root page of table to open */
  int wrFlag,                            /* 1 to write. 0 read-only */
  struct KeyInfo *pKeyInfo,              /* First arg to comparison function */
  BtCursor *pCur                         /* Space for new cursor */
){
  BtShared *pBt = p->pBt;                /* Shared b-tree handle */

  FUNC1( FUNC5(p) );
  FUNC1( wrFlag==0 || wrFlag==1 );

  /* The following assert statements verify that if this is a sharable 
  ** b-tree database, the connection is holding the required table locks, 
  ** and that no other connection has any open cursor that conflicts with 
  ** this lock.  */
  FUNC1( FUNC4(p, iTable, pKeyInfo!=0, wrFlag+1) );
  FUNC1( wrFlag==0 || !FUNC3(p, iTable) );

  /* Assert that the caller has opened the required transaction. */
  FUNC1( p->inTrans>TRANS_NONE );
  FUNC1( wrFlag==0 || p->inTrans==TRANS_WRITE );
  FUNC1( pBt->pPage1 && pBt->pPage1->aData );

  if( FUNC0(wrFlag && (pBt->btsFlags & BTS_READ_ONLY)!=0) ){
    return SQLITE_READONLY;
  }
  if( iTable==1 && FUNC2(pBt)==0 ){
    FUNC1( wrFlag==0 );
    iTable = 0;
  }

  /* Now that no other errors can occur, finish filling in the BtCursor
  ** variables and link the cursor into the BtShared list.  */
  pCur->pgnoRoot = (Pgno)iTable;
  pCur->iPage = -1;
  pCur->pKeyInfo = pKeyInfo;
  pCur->pBtree = p;
  pCur->pBt = pBt;
  pCur->wrFlag = (u8)wrFlag;
  pCur->pNext = pBt->pCursor;
  if( pCur->pNext ){
    pCur->pNext->pPrev = pCur;
  }
  pBt->pCursor = pCur;
  pCur->eState = CURSOR_INVALID;
  pCur->cachedRowid = 0;
  return SQLITE_OK;
}