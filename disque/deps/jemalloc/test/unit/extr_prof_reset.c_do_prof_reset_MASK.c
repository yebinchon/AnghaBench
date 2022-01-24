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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int) ; 

__attribute__((used)) static void
FUNC4(size_t lg_prof_sample)
{
	FUNC0(FUNC3("prof.reset", NULL, NULL,
	    &lg_prof_sample, sizeof(size_t)), 0,
	    "Unexpected mallctl failure while resetting profile data");
	FUNC1(lg_prof_sample, FUNC2(),
	    "Expected profile sample rate change");
}