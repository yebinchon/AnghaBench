#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ inTransaction; TYPE_1__* pPage1; int /*<<< orphan*/  pPager; int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {int aData; } ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 scalar_t__ TRANS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(BtShared *pBt){
  FUNC0( FUNC4(pBt->mutex) );
  FUNC0( FUNC1(pBt,0)==0 || pBt->inTransaction>TRANS_NONE );
  if( pBt->inTransaction==TRANS_NONE && pBt->pPage1!=0 ){
    MemPage *pPage1 = pBt->pPage1;
    FUNC0( pPage1->aData );
    FUNC0( FUNC3(pBt->pPager)==1 );
    pBt->pPage1 = 0;
    FUNC2(pPage1);
  }
}