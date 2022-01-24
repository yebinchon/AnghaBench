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
struct turnstile {int /*<<< orphan*/  ts_free_turnstiles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct turnstile* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  TURNSTILE_STATE_FREELIST ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ts_free_elm ; 
 int /*<<< orphan*/  FUNC5 (struct turnstile*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct turnstile *
FUNC6(
	struct turnstile *ts)
{
	struct turnstile *ret_turnstile = TURNSTILE_NULL;
	FUNC4(!FUNC0(&ts->ts_free_turnstiles));
	ret_turnstile = FUNC1(&ts->ts_free_turnstiles);
	FUNC3(&ts->ts_free_turnstiles, ts_free_elm);
	FUNC4(ret_turnstile != TURNSTILE_NULL);
	FUNC5(ret_turnstile, TURNSTILE_STATE_FREELIST);
	/* Need to initialize the list again, since head and elm are in union */
	FUNC2(&ret_turnstile->ts_free_turnstiles);
	return ret_turnstile;
}