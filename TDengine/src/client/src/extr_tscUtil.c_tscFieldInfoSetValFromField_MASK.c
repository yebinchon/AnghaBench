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
typedef  size_t int32_t ;
struct TYPE_5__ {int* pVisibleCols; scalar_t__ numOfOutputCols; int /*<<< orphan*/ * pFields; } ;
typedef  int /*<<< orphan*/  TAOS_FIELD ;
typedef  TYPE_1__ SFieldInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC3(SFieldInfo* pFieldInfo, int32_t index, TAOS_FIELD* pField) {
  FUNC0(pFieldInfo, pFieldInfo->numOfOutputCols + 1);
  FUNC1(pFieldInfo, index);

  FUNC2(&pFieldInfo->pFields[index], pField, sizeof(TAOS_FIELD));
  pFieldInfo->pVisibleCols[index] = true;

  pFieldInfo->numOfOutputCols++;
}