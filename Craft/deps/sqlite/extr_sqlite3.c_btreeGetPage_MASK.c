#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pPager; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  int /*<<< orphan*/  MemPage ;
typedef  int /*<<< orphan*/  DbPage ;
typedef  TYPE_1__ BtShared ;

/* Variables and functions */
 int PAGER_ACQUIRE_NOCONTENT ; 
 int PAGER_ACQUIRE_READONLY ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
  BtShared *pBt,       /* The btree */
  Pgno pgno,           /* Number of the page to fetch */
  MemPage **ppPage,    /* Return the page in this parameter */
  int noContent,       /* Do not load page content if true */
  int bReadonly        /* True if a read-only (mmap) page is ok */
){
  int rc;
  DbPage *pDbPage;
  int flags = (noContent ? PAGER_ACQUIRE_NOCONTENT : 0) 
            | (bReadonly ? PAGER_ACQUIRE_READONLY : 0);

  FUNC0( noContent==0 || bReadonly==0 );
  FUNC0( FUNC3(pBt->mutex) );
  rc = FUNC2(pBt->pPager, pgno, (DbPage**)&pDbPage, flags);
  if( rc ) return rc;
  *ppPage = FUNC1(pDbPage, pgno, pBt);
  return SQLITE_OK;
}