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
typedef  int /*<<< orphan*/  lck_mtx_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  LCK_MTX_TAG_DESTROYED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(
	lck_mtx_t *mutex,
	boolean_t indirect)
{
	uint32_t state;

	if (indirect) {
		/* convert to destroyed state */
		FUNC3(mutex, LCK_MTX_TAG_DESTROYED);
		return;
	}

	state = FUNC2(mutex);
	FUNC1(mutex, &state);

	FUNC3(mutex, LCK_MTX_TAG_DESTROYED);

	FUNC0();
}