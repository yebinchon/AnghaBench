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
struct turnstile {scalar_t__ ts_proprietor; int /*<<< orphan*/  ts_free_turnstiles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct turnstile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TURNSTILE_STATE_FREELIST ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ts_free_elm ; 
 scalar_t__ FUNC2 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC3 (struct turnstile*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(
	struct turnstile *dst_ts,
	struct turnstile *free_ts)
{
	FUNC1(FUNC2(dst_ts) == FUNC2(free_ts));
	FUNC1(dst_ts->ts_proprietor == free_ts->ts_proprietor);
	FUNC3(free_ts, TURNSTILE_STATE_FREELIST);
	FUNC0(&dst_ts->ts_free_turnstiles, free_ts, ts_free_elm);
}