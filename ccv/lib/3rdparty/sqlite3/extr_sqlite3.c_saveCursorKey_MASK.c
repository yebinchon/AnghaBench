#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ eState; scalar_t__ pKey; scalar_t__ curIntKey; scalar_t__ nKey; } ;
typedef  TYPE_1__ BtCursor ;

/* Variables and functions */
 scalar_t__ CURSOR_VALID ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,void*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static int FUNC7(BtCursor *pCur){
  int rc = SQLITE_OK;
  FUNC0( CURSOR_VALID==pCur->eState );
  FUNC0( 0==pCur->pKey );
  FUNC0( FUNC1(pCur) );

  if( pCur->curIntKey ){
    /* Only the rowid is required for a table btree */
    pCur->nKey = FUNC2(pCur);
  }else{
    /* For an index btree, save the complete key content */
    void *pKey;
    pCur->nKey = FUNC4(pCur);
    pKey = FUNC5( pCur->nKey );
    if( pKey ){
      rc = FUNC3(pCur, 0, (int)pCur->nKey, pKey);
      if( rc==SQLITE_OK ){
        pCur->pKey = pKey;
      }else{
        FUNC6(pKey);
      }
    }else{
      rc = SQLITE_NOMEM_BKPT;
    }
  }
  FUNC0( !pCur->curIntKey || !pCur->pKey );
  return rc;
}