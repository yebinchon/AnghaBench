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
struct turnstile {int /*<<< orphan*/  ts_refcount; } ;

/* Variables and functions */
 struct turnstile* TURNSTILE_NULL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct turnstile*) ; 

void
FUNC3(struct turnstile *turnstile)
{
	if (turnstile == TURNSTILE_NULL) {
		return;
	}

	if (FUNC0(FUNC1(&turnstile->ts_refcount) == 0)) {
		FUNC2(turnstile);
	}
}