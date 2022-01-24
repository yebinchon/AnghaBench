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
struct TYPE_2__ {double dKey; } ;
typedef  TYPE_1__ tSkipListKey ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FLT_EPSILON ; 
 scalar_t__ FUNC0 (double) ; 

int32_t FUNC1(const void *pLeft, const void *pRight) {
  double ret = (((tSkipListKey *)pLeft)->dKey - ((tSkipListKey *)pRight)->dKey);
  if (FUNC0(ret) < FLT_EPSILON) {
    return 0;
  } else {
    return ret > 0 ? 1 : -1;
  }
}