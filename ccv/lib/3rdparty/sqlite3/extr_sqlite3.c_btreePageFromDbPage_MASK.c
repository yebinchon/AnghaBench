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
struct TYPE_3__ {scalar_t__ pgno; scalar_t__ aData; int hdrOffset; int /*<<< orphan*/ * pBt; int /*<<< orphan*/ * pDbPage; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_1__ MemPage ;
typedef  int /*<<< orphan*/  DbPage ;
typedef  int /*<<< orphan*/  BtShared ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static MemPage *FUNC3(DbPage *pDbPage, Pgno pgno, BtShared *pBt){
  MemPage *pPage = (MemPage*)FUNC2(pDbPage);
  if( pgno!=pPage->pgno ){
    pPage->aData = FUNC1(pDbPage);
    pPage->pDbPage = pDbPage;
    pPage->pBt = pBt;
    pPage->pgno = pgno;
    pPage->hdrOffset = pgno==1 ? 100 : 0;
  }
  FUNC0( pPage->aData==FUNC1(pDbPage) );
  return pPage; 
}