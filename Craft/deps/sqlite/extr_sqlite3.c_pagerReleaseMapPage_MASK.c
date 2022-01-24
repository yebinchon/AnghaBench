#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int i64 ;
struct TYPE_9__ {TYPE_1__* pMethods; } ;
struct TYPE_8__ {int pageSize; TYPE_4__* fd; TYPE_2__* pMmapFreelist; int /*<<< orphan*/  nMmapOut; } ;
struct TYPE_7__ {int pgno; int /*<<< orphan*/  pData; struct TYPE_7__* pDirty; TYPE_3__* pPager; } ;
struct TYPE_6__ {int iVersion; } ;
typedef  TYPE_2__ PgHdr ;
typedef  TYPE_3__ Pager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(PgHdr *pPg){
  Pager *pPager = pPg->pPager;
  pPager->nMmapOut--;
  pPg->pDirty = pPager->pMmapFreelist;
  pPager->pMmapFreelist = pPg;

  FUNC0( pPager->fd->pMethods->iVersion>=3 );
  FUNC1(pPager->fd, (i64)(pPg->pgno-1)*pPager->pageSize, pPg->pData);
}