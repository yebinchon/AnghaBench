#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_6__ {int autoVacuum; scalar_t__ usableSize; int /*<<< orphan*/  pPager; int /*<<< orphan*/  mutex; } ;
typedef  scalar_t__ Pgno ;
typedef  int /*<<< orphan*/  DbPage ;
typedef  TYPE_1__ BtShared ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__) ; 
 int FUNC3 (scalar_t__,scalar_t__) ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(BtShared *pBt, Pgno key, u8 eType, Pgno parent, int *pRC){
  DbPage *pDbPage;  /* The pointer map page */
  u8 *pPtrmap;      /* The pointer map data */
  Pgno iPtrmap;     /* The pointer map page number */
  int offset;       /* Offset in pointer map page */
  int rc;           /* Return code from subfunctions */

  if( *pRC ) return;

  FUNC5( FUNC12(pBt->mutex) );
  /* The master-journal page number must never be used as a pointer map page */
  FUNC5( 0==FUNC1(pBt, FUNC0(pBt)) );

  FUNC5( pBt->autoVacuum );
  if( key==0 ){
    *pRC = SQLITE_CORRUPT_BKPT;
    return;
  }
  iPtrmap = FUNC2(pBt, key);
  rc = FUNC8(pBt->pPager, iPtrmap, &pDbPage);
  if( rc!=SQLITE_OK ){
    *pRC = rc;
    return;
  }
  offset = FUNC3(iPtrmap, key);
  if( offset<0 ){
    *pRC = SQLITE_CORRUPT_BKPT;
    goto ptrmap_exit;
  }
  FUNC5( offset <= (int)pBt->usableSize-5 );
  pPtrmap = (u8 *)FUNC9(pDbPage);

  if( eType!=pPtrmap[offset] || FUNC6(&pPtrmap[offset+1])!=parent ){
    FUNC4(("PTRMAP_UPDATE: %d->(%d,%d)\n", key, eType, parent));
    *pRC= rc = FUNC11(pDbPage);
    if( rc==SQLITE_OK ){
      pPtrmap[offset] = eType;
      FUNC7(&pPtrmap[offset+1], parent);
    }
  }

ptrmap_exit:
  FUNC10(pDbPage);
}