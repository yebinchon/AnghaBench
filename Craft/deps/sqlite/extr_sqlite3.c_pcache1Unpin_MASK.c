#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_pcache_page ;
typedef  int /*<<< orphan*/  sqlite3_pcache ;
struct TYPE_10__ {TYPE_2__* pGroup; int /*<<< orphan*/  nRecyclable; } ;
struct TYPE_9__ {scalar_t__ nCurrentPage; scalar_t__ nMaxPage; TYPE_1__* pLruHead; TYPE_1__* pLruTail; } ;
struct TYPE_8__ {scalar_t__ pLruPrev; struct TYPE_8__* pLruNext; TYPE_3__* pCache; } ;
typedef  TYPE_1__ PgHdr1 ;
typedef  TYPE_2__ PGroup ;
typedef  TYPE_3__ PCache1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(
  sqlite3_pcache *p, 
  sqlite3_pcache_page *pPg, 
  int reuseUnlikely
){
  PCache1 *pCache = (PCache1 *)p;
  PgHdr1 *pPage = (PgHdr1 *)pPg;
  PGroup *pGroup = pCache->pGroup;
 
  FUNC0( pPage->pCache==pCache );
  FUNC1(pGroup);

  /* It is an error to call this function if the page is already 
  ** part of the PGroup LRU list.
  */
  FUNC0( pPage->pLruPrev==0 && pPage->pLruNext==0 );
  FUNC0( pGroup->pLruHead!=pPage && pGroup->pLruTail!=pPage );

  if( reuseUnlikely || pGroup->nCurrentPage>pGroup->nMaxPage ){
    FUNC4(pPage);
    FUNC2(pPage);
  }else{
    /* Add the page to the PGroup LRU list. */
    if( pGroup->pLruHead ){
      pGroup->pLruHead->pLruPrev = pPage;
      pPage->pLruNext = pGroup->pLruHead;
      pGroup->pLruHead = pPage;
    }else{
      pGroup->pLruTail = pPage;
      pGroup->pLruHead = pPage;
    }
    pCache->nRecyclable++;
  }

  FUNC3(pCache->pGroup);
}