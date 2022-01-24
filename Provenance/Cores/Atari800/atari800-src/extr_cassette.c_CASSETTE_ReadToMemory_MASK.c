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
typedef  int /*<<< orphan*/  UWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FALSE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
#define  TRUE 128 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  cassette_file ; 
 scalar_t__ cassette_gapdelay ; 
 int /*<<< orphan*/  cassette_readable ; 
 int eof_of_tape ; 
 int event_time_left ; 

int FUNC4(UWORD dest_addr, int length)
{
	FUNC0(1);
	if (!cassette_readable)
		return 0;

	/* Convert wait_time to ms ( wait_time * 1000 / 1789790 ) and subtract. */
	cassette_gapdelay -= event_time_left / 1789; /* better accuracy not needed */
	if (!FUNC2(cassette_file, cassette_gapdelay)) {
		/* Ignore the eventual error, assume it is the end of file */
		cassette_gapdelay = 0;
		eof_of_tape = 1;
		FUNC3();
		return 0;
	}
	cassette_gapdelay = 0;

	/* Load bytes */
	switch (FUNC1(cassette_file, dest_addr, length)) {
	case TRUE:
		return TRUE;
	case -1: /* Read error/EOF */
		eof_of_tape = 1;
		FUNC3();
		/* FALLTHROUGH */
	default: /* case FALSE */
		return FALSE;
	}
}