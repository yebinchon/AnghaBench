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
struct TYPE_4__ {int /*<<< orphan*/  pVisibleCols; int /*<<< orphan*/  pFields; int /*<<< orphan*/  pOffset; } ;
typedef  TYPE_1__ SFieldInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(SFieldInfo* pFieldInfo) {
  if (pFieldInfo == NULL) {
    return;
  }

  FUNC1(pFieldInfo->pOffset);
  FUNC1(pFieldInfo->pFields);
  FUNC1(pFieldInfo->pVisibleCols);

  FUNC0(pFieldInfo, 0, sizeof(SFieldInfo));
}