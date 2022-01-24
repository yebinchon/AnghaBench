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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_UNINT ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(void)
{
	int chr;
	uint64_t next;

	while(1) {
		chr = FUNC0(0, 1, 0, 1);	/* Get a character if there is one */
		if(chr < 0) /* The serial buffer is empty */
			break;
		FUNC3((char)chr);			/* Buffer up the character */
	}

	FUNC2(16, 1000000, &next);	/* Get time of pop */

	FUNC1((event_t)serial_keyboard_poll, THREAD_UNINT, next);	/* Show we are "waiting" */
	FUNC5((thread_continue_t)serial_keyboard_poll);	/* Wait for it */
	FUNC4("serial_keyboard_poll: Shouldn't never ever get here...\n");
}