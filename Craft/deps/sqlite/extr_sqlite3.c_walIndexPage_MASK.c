#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  volatile u32 ;
struct TYPE_3__ {int nWiData; scalar_t__ exclusiveMode; int /*<<< orphan*/  volatile** apWiData; int /*<<< orphan*/  readOnly; int /*<<< orphan*/  writeLock; int /*<<< orphan*/  pDbFd; } ;
typedef  TYPE_1__ Wal ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int SQLITE_READONLY ; 
 int /*<<< orphan*/  WALINDEX_PGSZ ; 
 scalar_t__ WAL_HEAPMEMORY_MODE ; 
 int /*<<< orphan*/  WAL_SHM_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void volatile**) ; 
 scalar_t__ FUNC4 (void*,int) ; 

__attribute__((used)) static int FUNC5(Wal *pWal, int iPage, volatile u32 **ppPage){
  int rc = SQLITE_OK;

  /* Enlarge the pWal->apWiData[] array if required */
  if( pWal->nWiData<=iPage ){
    int nByte = sizeof(u32*)*(iPage+1);
    volatile u32 **apNew;
    apNew = (volatile u32 **)FUNC4((void *)pWal->apWiData, nByte);
    if( !apNew ){
      *ppPage = 0;
      return SQLITE_NOMEM;
    }
    FUNC1((void*)&apNew[pWal->nWiData], 0,
           sizeof(u32*)*(iPage+1-pWal->nWiData));
    pWal->apWiData = apNew;
    pWal->nWiData = iPage+1;
  }

  /* Request a pointer to the required page from the VFS */
  if( pWal->apWiData[iPage]==0 ){
    if( pWal->exclusiveMode==WAL_HEAPMEMORY_MODE ){
      pWal->apWiData[iPage] = (u32 volatile *)FUNC2(WALINDEX_PGSZ);
      if( !pWal->apWiData[iPage] ) rc = SQLITE_NOMEM;
    }else{
      rc = FUNC3(pWal->pDbFd, iPage, WALINDEX_PGSZ, 
          pWal->writeLock, (void volatile **)&pWal->apWiData[iPage]
      );
      if( rc==SQLITE_READONLY ){
        pWal->readOnly |= WAL_SHM_RDONLY;
        rc = SQLITE_OK;
      }
    }
  }

  *ppPage = pWal->apWiData[iPage];
  FUNC0( iPage==0 || *ppPage || rc!=SQLITE_OK );
  return rc;
}