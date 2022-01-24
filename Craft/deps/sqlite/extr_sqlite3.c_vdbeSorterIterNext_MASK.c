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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_6__ {scalar_t__ iReadOff; scalar_t__ iEof; int nKey; int /*<<< orphan*/  aKey; } ;
typedef  TYPE_1__ VdbeSorterIter ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(
  sqlite3 *db,                    /* Database handle (for sqlite3DbMalloc() ) */
  VdbeSorterIter *pIter           /* Iterator to advance */
){
  int rc;                         /* Return Code */
  u64 nRec = 0;                   /* Size of record in bytes */

  if( pIter->iReadOff>=pIter->iEof ){
    /* This is an EOF condition */
    FUNC2(db, pIter);
    return SQLITE_OK;
  }

  rc = FUNC1(db, pIter, &nRec);
  if( rc==SQLITE_OK ){
    pIter->nKey = (int)nRec;
    rc = FUNC0(db, pIter, (int)nRec, &pIter->aKey);
  }

  return rc;
}