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
typedef  size_t int32_t ;
struct TYPE_4__ {int numOfFilters; int /*<<< orphan*/ * filterInfo; } ;
typedef  int /*<<< orphan*/  SColumnFilterInfo ;
typedef  TYPE_1__ SColumnBase ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(SColumnBase* dst, const SColumnBase* src) {
  FUNC0 (src != NULL && dst != NULL);

  *dst = *src;

  if (src->numOfFilters > 0) {
    dst->filterInfo = FUNC1(1, src->numOfFilters * sizeof(SColumnFilterInfo));

    for (int32_t j = 0; j < src->numOfFilters; ++j) {
      FUNC2(&dst->filterInfo[j], &src->filterInfo[j]);
    }
  } else {
    FUNC0(src->filterInfo == NULL);
  }
}