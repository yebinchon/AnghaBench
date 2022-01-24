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
struct TYPE_2__ {int /*<<< orphan*/  i64Key; } ;
typedef  TYPE_1__ tSkipListKey ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int32_t FUNC1(const void *pLeft, const void *pRight) {
  int64_t lhs = ((tSkipListKey *)pLeft)->i64Key;
  int64_t rhs = ((tSkipListKey *)pRight)->i64Key;

  FUNC0(lhs, rhs);
}