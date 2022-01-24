#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int nLen; int /*<<< orphan*/  wpz; } ;
typedef  TYPE_1__ tSkipListKey ;
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int32_t FUNC1(const void *pLeft, const void *pRight) {
  tSkipListKey *pL = (tSkipListKey *)pLeft;
  tSkipListKey *pR = (tSkipListKey *)pRight;

  if (pL->nLen == 0 && pR->nLen == 0) {
    return 0;
  }

  //handle only one-side bound compare situation, there is only lower bound or only upper bound
  if (pL->nLen == -1) {
    return 1;  // no lower bound, lower bound is minimum, always return -1;
  } else if (pR->nLen == -1) {
    return -1;  // no upper bound, upper bound is maximum situation, always return 1;
  }

  int32_t ret = FUNC0(((tSkipListKey *)pLeft)->wpz, ((tSkipListKey *)pRight)->wpz);

  if (ret == 0) {
    return 0;
  } else {
    return ret > 0 ? 1 : -1;
  }
}