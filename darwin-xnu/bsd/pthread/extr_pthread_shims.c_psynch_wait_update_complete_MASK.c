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
struct turnstile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TURNSTILE_INTERLOCK_NOT_HELD ; 
 int /*<<< orphan*/  FUNC0 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC1 (struct turnstile*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct turnstile *ts)
{
	FUNC0(ts);
	FUNC1(ts, TURNSTILE_INTERLOCK_NOT_HELD);
}