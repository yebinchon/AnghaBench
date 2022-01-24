#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ autoVacuum; TYPE_13__* pCursor; } ;
struct TYPE_16__ {scalar_t__ inTrans; int /*<<< orphan*/  db; TYPE_3__* pBt; } ;
struct TYPE_15__ {int /*<<< orphan*/  db; } ;
struct TYPE_14__ {TYPE_1__* pBtree; } ;
typedef  int Pgno ;
typedef  int /*<<< orphan*/  MemPage ;
typedef  TYPE_2__ Btree ;
typedef  TYPE_3__ BtShared ;

/* Variables and functions */
 int /*<<< orphan*/  BTREE_LARGEST_ROOT_PAGE ; 
 scalar_t__ FUNC0 (TYPE_13__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int PTF_INTKEY ; 
 int PTF_LEAF ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  PTRMAP_ROOTPAGE ; 
 int SQLITE_LOCKED_SHAREDCACHE ; 
 int SQLITE_OK ; 
 scalar_t__ TRANS_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC14(Btree *p, Pgno iTable, int *piMoved){
  int rc;
  MemPage *pPage = 0;
  BtShared *pBt = p->pBt;

  FUNC3( FUNC10(p) );
  FUNC3( p->inTrans==TRANS_WRITE );

  /* It is illegal to drop a table if any cursors are open on the
  ** database. This is because in auto-vacuum mode the backend may
  ** need to move another root-page to fill a gap left by the deleted
  ** root page. If an open cursor was using this page a problem would 
  ** occur.
  **
  ** This error is caught long before control reaches this point.
  */
  if( FUNC0(pBt->pCursor) ){
    FUNC12(p->db, pBt->pCursor->pBtree->db);
    return SQLITE_LOCKED_SHAREDCACHE;
  }

  rc = FUNC4(pBt, (Pgno)iTable, &pPage, 0, 0);
  if( rc ) return rc;
  rc = FUNC8(p, iTable, 0);
  if( rc ){
    FUNC6(pPage);
    return rc;
  }

  *piMoved = 0;

  if( iTable>1 ){
#ifdef SQLITE_OMIT_AUTOVACUUM
    freePage(pPage, &rc);
    releasePage(pPage);
#else
    if( pBt->autoVacuum ){
      Pgno maxRootPgno;
      FUNC9(p, BTREE_LARGEST_ROOT_PAGE, &maxRootPgno);

      if( iTable==maxRootPgno ){
        /* If the table being dropped is the table with the largest root-page
        ** number in the database, put the root page on the free list. 
        */
        FUNC5(pPage, &rc);
        FUNC6(pPage);
        if( rc!=SQLITE_OK ){
          return rc;
        }
      }else{
        /* The table being dropped does not have the largest root-page
        ** number in the database. So move the page that does into the 
        ** gap left by the deleted root-page.
        */
        MemPage *pMove;
        FUNC6(pPage);
        rc = FUNC4(pBt, maxRootPgno, &pMove, 0, 0);
        if( rc!=SQLITE_OK ){
          return rc;
        }
        rc = FUNC7(pBt, pMove, PTRMAP_ROOTPAGE, 0, iTable, 0);
        FUNC6(pMove);
        if( rc!=SQLITE_OK ){
          return rc;
        }
        pMove = 0;
        rc = FUNC4(pBt, maxRootPgno, &pMove, 0, 0);
        FUNC5(pMove, &rc);
        FUNC6(pMove);
        if( rc!=SQLITE_OK ){
          return rc;
        }
        *piMoved = maxRootPgno;
      }

      /* Set the new 'max-root-page' value in the database header. This
      ** is the old value less one, less one more if that happens to
      ** be a root-page number, less one again if that is the
      ** PENDING_BYTE_PAGE.
      */
      maxRootPgno--;
      while( maxRootPgno==FUNC1(pBt)
             || FUNC2(pBt, maxRootPgno) ){
        maxRootPgno--;
      }
      FUNC3( maxRootPgno!=FUNC1(pBt) );

      rc = FUNC11(p, 4, maxRootPgno);
    }else{
      FUNC5(pPage, &rc);
      FUNC6(pPage);
    }
#endif
  }else{
    /* If sqlite3BtreeDropTable was called on page 1.
    ** This really never should happen except in a corrupt
    ** database. 
    */
    FUNC13(pPage, PTF_INTKEY|PTF_LEAF );
    FUNC6(pPage);
  }
  return rc;  
}