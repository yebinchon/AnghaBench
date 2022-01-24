#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {scalar_t__ nInMemory; scalar_t__ pRecord; scalar_t__ pTemp1; scalar_t__ iWriteOff; scalar_t__ nPMA; } ;
typedef  TYPE_1__ VdbeSorter ;
struct TYPE_8__ {TYPE_1__* pSorter; } ;
typedef  TYPE_2__ VdbeCursor ;
struct TYPE_9__ {scalar_t__ nVal; int /*<<< orphan*/  pVal; struct TYPE_9__* pNext; } ;
typedef  TYPE_3__ SorterRecord ;
typedef  int /*<<< orphan*/  FileWriter ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC8 (TYPE_2__ const*) ; 

__attribute__((used)) static int FUNC9(sqlite3 *db, const VdbeCursor *pCsr){
  int rc = SQLITE_OK;             /* Return code */
  VdbeSorter *pSorter = pCsr->pSorter;
  FileWriter writer;

  FUNC5(&writer, 0, sizeof(FileWriter));

  if( pSorter->nInMemory==0 ){
    FUNC0( pSorter->pRecord==0 );
    return rc;
  }

  rc = FUNC8(pCsr);

  /* If the first temporary PMA file has not been opened, open it now. */
  if( rc==SQLITE_OK && pSorter->pTemp1==0 ){
    rc = FUNC7(db, &pSorter->pTemp1);
    FUNC0( rc!=SQLITE_OK || pSorter->pTemp1 );
    FUNC0( pSorter->iWriteOff==0 );
    FUNC0( pSorter->nPMA==0 );
  }

  if( rc==SQLITE_OK ){
    SorterRecord *p;
    SorterRecord *pNext = 0;

    FUNC2(db, pSorter->pTemp1, &writer, pSorter->iWriteOff);
    pSorter->nPMA++;
    FUNC4(&writer, pSorter->nInMemory);
    for(p=pSorter->pRecord; p; p=pNext){
      pNext = p->pNext;
      FUNC4(&writer, p->nVal);
      FUNC3(&writer, p->pVal, p->nVal);
      FUNC6(db, p);
    }
    pSorter->pRecord = p;
    rc = FUNC1(db, &writer, &pSorter->iWriteOff);
  }

  return rc;
}