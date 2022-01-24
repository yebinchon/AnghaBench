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
struct turnstile {int /*<<< orphan*/  ts_deallocate_link; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_terminate_lock ; 
 int /*<<< orphan*/  thread_terminate_queue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  turnstile_deallocate_queue ; 

void
FUNC6(
	struct turnstile *turnstile)
{
	spl_t s = FUNC3();

	FUNC1(&thread_terminate_lock);
	FUNC0(&turnstile_deallocate_queue, &turnstile->ts_deallocate_link);
	FUNC2(&thread_terminate_lock);

	FUNC5((event_t)&thread_terminate_queue);
	FUNC4(s);
}