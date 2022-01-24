#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct route {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFSCOPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  FUNC3 (struct route*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct route *ro, uint32_t ignore)
{
	FUNC0(rnh_lock, LCK_MTX_ASSERT_NOTOWNED);
	FUNC1(rnh_lock);
	FUNC3(ro, ignore, IFSCOPE_NONE);
	FUNC2(rnh_lock);
}