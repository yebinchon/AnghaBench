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
typedef  int int32_t ;
struct TYPE_3__ {int numOfCols; int /*<<< orphan*/ * pColList; } ;
typedef  TYPE_1__ SColumnBaseInfo ;
typedef  int /*<<< orphan*/  SColumnBase ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(SColumnBaseInfo* pcolList, int32_t index) {
  if (index < pcolList->numOfCols) {
    FUNC1(&pcolList->pColList[index + 1], &pcolList->pColList[index],
            sizeof(SColumnBase) * (pcolList->numOfCols - index));

    FUNC0(&pcolList->pColList[index]);
  }
}