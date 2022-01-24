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
union corpse_creation_gate {int /*<<< orphan*/  value; int /*<<< orphan*/  corpses; int /*<<< orphan*/  user_faults; } ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int CORPSE_CRASHINFO_HAS_REF ; 
 int CORPSE_CRASHINFO_USER_FAULT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inflight_corpses ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static kern_return_t
FUNC4(uint16_t kcd_u_flags)
{
	union corpse_creation_gate oldgate, newgate;

	FUNC0(kcd_u_flags & CORPSE_CRASHINFO_HAS_REF);

	oldgate.value = FUNC2(&inflight_corpses, memory_order_relaxed);
	for (;;) {
		newgate = oldgate;
		if (kcd_u_flags & CORPSE_CRASHINFO_USER_FAULT) {
			if (newgate.user_faults-- == 0) {
				FUNC3("corpse in flight count over-release");
			}
		}
		if (newgate.corpses-- == 0) {
			FUNC3("corpse in flight count over-release");
		}
		// this reloads the value in oldgate
		if (FUNC1(&inflight_corpses,
				&oldgate.value, newgate.value, memory_order_relaxed,
				memory_order_relaxed)) {
			return KERN_SUCCESS;
		}
	}
}