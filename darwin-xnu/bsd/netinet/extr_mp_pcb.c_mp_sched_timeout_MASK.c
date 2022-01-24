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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ mp_garbage_collecting ; 
 scalar_t__ mp_ticking ; 
 int /*<<< orphan*/  mp_timeout ; 
 int /*<<< orphan*/  mp_timeout_lock ; 
 scalar_t__ mp_timeout_run ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC0(&mp_timeout_lock, LCK_MTX_ASSERT_OWNED);

	if (!mp_timeout_run && (mp_garbage_collecting || mp_ticking)) {
		FUNC1(&mp_timeout_lock);
		mp_timeout_run = TRUE;
		FUNC2(mp_timeout, NULL, hz);
	}
}