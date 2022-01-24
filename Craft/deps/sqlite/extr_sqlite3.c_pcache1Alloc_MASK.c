#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {int szSlot; scalar_t__ nFreeSlot; int bUnderPressure; scalar_t__ nReserve; int /*<<< orphan*/  mutex; TYPE_2__* pFree; TYPE_1__ grp; } ;
struct TYPE_5__ {struct TYPE_5__* pNext; } ;
typedef  int /*<<< orphan*/  PgHdr1 ;

/* Variables and functions */
 int /*<<< orphan*/  MEMTYPE_PCACHE ; 
 int /*<<< orphan*/  SQLITE_STATUS_PAGECACHE_OVERFLOW ; 
 int /*<<< orphan*/  SQLITE_STATUS_PAGECACHE_SIZE ; 
 int /*<<< orphan*/  SQLITE_STATUS_PAGECACHE_USED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__ pcache1 ; 
 void* FUNC1 (int) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC9(int nByte){
  void *p = 0;
  FUNC0( FUNC8(pcache1.grp.mutex) );
  FUNC5(SQLITE_STATUS_PAGECACHE_SIZE, nByte);
  if( nByte<=pcache1.szSlot ){
    FUNC6(pcache1.mutex);
    p = (PgHdr1 *)pcache1.pFree;
    if( p ){
      pcache1.pFree = pcache1.pFree->pNext;
      pcache1.nFreeSlot--;
      pcache1.bUnderPressure = pcache1.nFreeSlot<pcache1.nReserve;
      FUNC0( pcache1.nFreeSlot>=0 );
      FUNC4(SQLITE_STATUS_PAGECACHE_USED, 1);
    }
    FUNC7(pcache1.mutex);
  }
  if( p==0 ){
    /* Memory is not available in the SQLITE_CONFIG_PAGECACHE pool.  Get
    ** it from sqlite3Malloc instead.
    */
    p = FUNC1(nByte);
#ifndef SQLITE_DISABLE_PAGECACHE_OVERFLOW_STATS
    if( p ){
      int sz = FUNC2(p);
      FUNC6(pcache1.mutex);
      FUNC4(SQLITE_STATUS_PAGECACHE_OVERFLOW, sz);
      FUNC7(pcache1.mutex);
    }
#endif
    FUNC3(p, MEMTYPE_PCACHE);
  }
  return p;
}