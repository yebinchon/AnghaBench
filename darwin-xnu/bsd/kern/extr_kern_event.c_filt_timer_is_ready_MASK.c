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
typedef  scalar_t__ uint64_t ;
struct knote {scalar_t__* kn_ext; int kn_sfflags; } ;

/* Variables and functions */
 int NOTE_MACH_CONTINUOUS_TIME ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static bool
FUNC2(struct knote *kn)
{
	uint64_t now, deadline = kn->kn_ext[0];

	if (deadline == 0) {
		return true;
	}

	if (kn->kn_sfflags & NOTE_MACH_CONTINUOUS_TIME) {
		now = FUNC1();
	} else {
		now = FUNC0();
	}
	return deadline <= now;
}