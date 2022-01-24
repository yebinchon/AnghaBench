#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* pStart; void* pEnd; scalar_t__ nFreeSlot; int bUnderPressure; scalar_t__ nReserve; scalar_t__ nSlot; int /*<<< orphan*/  mutex; TYPE_1__* pFree; } ;
struct TYPE_3__ {struct TYPE_3__* pNext; } ;
typedef  TYPE_1__ PgFreeslot ;

/* Variables and functions */
 int /*<<< orphan*/  MEMTYPE_HEAP ; 
 int /*<<< orphan*/  MEMTYPE_PCACHE ; 
 int /*<<< orphan*/  SQLITE_STATUS_PAGECACHE_OVERFLOW ; 
 int /*<<< orphan*/  SQLITE_STATUS_PAGECACHE_USED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__ pcache1 ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void *p){
  int nFreed = 0;
  if( p==0 ) return 0;
  if( p>=pcache1.pStart && p<pcache1.pEnd ){
    PgFreeslot *pSlot;
    FUNC6(pcache1.mutex);
    FUNC4(SQLITE_STATUS_PAGECACHE_USED, -1);
    pSlot = (PgFreeslot*)p;
    pSlot->pNext = pcache1.pFree;
    pcache1.pFree = pSlot;
    pcache1.nFreeSlot++;
    pcache1.bUnderPressure = pcache1.nFreeSlot<pcache1.nReserve;
    FUNC0( pcache1.nFreeSlot<=pcache1.nSlot );
    FUNC7(pcache1.mutex);
  }else{
    FUNC0( FUNC2(p, MEMTYPE_PCACHE) );
    FUNC3(p, MEMTYPE_HEAP);
    nFreed = FUNC1(p);
#ifndef SQLITE_DISABLE_PAGECACHE_OVERFLOW_STATS
    FUNC6(pcache1.mutex);
    FUNC4(SQLITE_STATUS_PAGECACHE_OVERFLOW, -nFreed);
    FUNC7(pcache1.mutex);
#endif
    FUNC5(p);
  }
  return nFreed;
}