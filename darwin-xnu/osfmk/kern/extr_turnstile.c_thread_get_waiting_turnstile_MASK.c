#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct waitq {int dummy; } ;
struct turnstile {int dummy; } ;
struct TYPE_3__ {struct waitq* waitq; } ;

/* Variables and functions */
 struct turnstile* TURNSTILE_NULL ; 
 struct waitq* FUNC0 (struct waitq*) ; 
 scalar_t__ FUNC1 (struct waitq*) ; 
 scalar_t__ FUNC2 (struct waitq*) ; 
 struct turnstile* FUNC3 (struct waitq*) ; 

struct turnstile *
FUNC4(thread_t thread)
{
	struct turnstile *turnstile = TURNSTILE_NULL;
	struct waitq *waitq = thread->waitq;

	/* Check if the thread is on a waitq */
	if (waitq == NULL) {
		return turnstile;
	}

	/* Get the safeq if the waitq is a port queue */
	if (FUNC1(waitq)) {
		waitq = FUNC0(waitq);
	}

	/* Check if the waitq is a turnstile queue */
	if (FUNC2(waitq)) {
		turnstile = FUNC3(waitq);
	}
	return turnstile;
}