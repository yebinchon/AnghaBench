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
typedef  int /*<<< orphan*/  x86_saved_state_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  VALID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64_t
FUNC4(void *arg, dtrace_id_t id, void *parg, int argno,
    int aframes)
{
	FUNC3(FUNC0(), VALID);
#pragma unused(arg, id, parg, aframes)
	return (FUNC1((x86_saved_state_t *)FUNC2(FUNC0()), 0, argno));
}