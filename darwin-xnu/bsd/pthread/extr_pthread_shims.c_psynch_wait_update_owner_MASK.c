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
typedef  int /*<<< orphan*/  thread_t ;
struct turnstile {int dummy; } ;

/* Variables and functions */
 int TURNSTILE_IMMEDIATE_UPDATE ; 
 int TURNSTILE_INHERITOR_THREAD ; 
 int /*<<< orphan*/  TURNSTILE_INTERLOCK_HELD ; 
 int /*<<< orphan*/  TURNSTILE_NULL ; 
 int /*<<< orphan*/  TURNSTILE_PTHREAD_MUTEX ; 
 int /*<<< orphan*/  FUNC0 (uintptr_t,struct turnstile**,int /*<<< orphan*/ *) ; 
 struct turnstile* FUNC1 (uintptr_t,struct turnstile**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct turnstile*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct turnstile*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(uintptr_t kwq, thread_t owner,
		struct turnstile **tstore)
{
	struct turnstile *ts;

	ts = FUNC1(kwq, tstore, TURNSTILE_NULL,
			TURNSTILE_PTHREAD_MUTEX);

	FUNC2(ts, owner,
			(TURNSTILE_IMMEDIATE_UPDATE | TURNSTILE_INHERITOR_THREAD));
	FUNC3(ts, TURNSTILE_INTERLOCK_HELD);
	FUNC0(kwq, tstore, NULL);
}