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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static MemPage *FUNC4(BtShared *pBt, Pgno pgno){
  DbPage *pDbPage;
  FUNC0( FUNC3(pBt->mutex) );
  pDbPage = FUNC2(pBt->pPager, pgno);
  if( pDbPage ){
    return FUNC1(pDbPage, pgno, pBt);
  }
  return 0;
}