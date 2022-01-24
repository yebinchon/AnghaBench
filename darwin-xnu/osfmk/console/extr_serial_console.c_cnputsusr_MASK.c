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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ console_output ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(char *s, int size)
{

	if (size > 1) {
		FUNC2(s, size);
		return;
	}

	boolean_t state;

	/* Spin (with pre-emption enabled) waiting for console_ring_try_empty()
	 * to complete output. There is a small window here where we could
	 * end up with a stale value of console_output, but it's unlikely,
	 * and _cnputs(), which outputs to the console device, is internally
	 * synchronized. There's something of a conflict between the
	 * character-at-a-time (with pre-emption enabled) unbuffered
	 * output model here, and the buffered output from cnputc(),
	 * whose consumers include printf() ( which outputs a sequence
	 * with pre-emption disabled, and should be safe to call with
	 * interrupts off); we don't want to disable pre-emption indefinitely
	 * here, and spinlocks and mutexes are inappropriate.
	 */
	while (console_output != 0) {
		FUNC3(1);
	}

	/*
	 * We disable interrupts to avoid issues caused by rendevous IPIs
	 * and an interruptible core holding the lock while an uninterruptible
	 * core wants it.  Stackshot is the prime example of this.
	 */
	state = FUNC4(FALSE);
	FUNC0(s, 1);
	FUNC1(state);
}