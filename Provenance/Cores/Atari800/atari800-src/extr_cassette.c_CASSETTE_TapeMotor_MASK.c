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

/* Variables and functions */
 scalar_t__ CASSETTE_record ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  cassette_file ; 
 int cassette_motor ; 
 scalar_t__ cassette_writable ; 

void FUNC2(int onoff)
{
	if (cassette_motor != onoff) {
		if (CASSETTE_record && cassette_writable)
			/* Recording disabled, flush the tape */
			FUNC0(cassette_file);
		cassette_motor = onoff;
		FUNC1();
	}
}