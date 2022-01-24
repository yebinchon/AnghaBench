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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  mcache_obj_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {int mleak_sample_factor; int /*<<< orphan*/  mleak_capture; } ;

/* Variables and functions */
 int MLEAK_STACK_DEPTH ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (uintptr_t*,int) ; 
 scalar_t__ mclfindleak ; 
 void FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (uintptr_t*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ mleak_table ; 

__attribute__((used)) static void
FUNC4(u_int32_t num, mcache_obj_t *addr, boolean_t alloc)
{
	int temp;

	if (mclfindleak == 0)
		return;

	if (!alloc)
		return (FUNC2(addr));

	temp = FUNC0(&mleak_table.mleak_capture, 1);

	if ((temp % mleak_table.mleak_sample_factor) == 0 && addr != NULL) {
		uintptr_t bt[MLEAK_STACK_DEPTH];
		int logged = FUNC1(bt, MLEAK_STACK_DEPTH);
		FUNC3(bt, addr, logged, num);
	}
}