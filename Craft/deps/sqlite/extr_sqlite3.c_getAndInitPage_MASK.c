#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
typedef  scalar_t__ Pgno ;
typedef  int /*<<< orphan*/  MemPage ;
typedef  TYPE_1__ BtShared ;

/* Variables and functions */
 int SQLITE_CORRUPT ; 
 int SQLITE_CORRUPT_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(
  BtShared *pBt,                  /* The database file */
  Pgno pgno,                      /* Number of the page to get */
  MemPage **ppPage,               /* Write the page pointer here */
  int bReadonly                   /* True if a read-only (mmap) page is ok */
){
  int rc;
  FUNC0( FUNC5(pBt->mutex) );

  if( pgno>FUNC3(pBt) ){
    rc = SQLITE_CORRUPT_BKPT;
  }else{
    rc = FUNC1(pBt, pgno, ppPage, 0, bReadonly);
    if( rc==SQLITE_OK ){
      rc = FUNC2(*ppPage);
      if( rc!=SQLITE_OK ){
        FUNC4(*ppPage);
      }
    }
  }

  FUNC6( pgno==0 );
  FUNC0( pgno!=0 || rc==SQLITE_CORRUPT );
  return rc;
}