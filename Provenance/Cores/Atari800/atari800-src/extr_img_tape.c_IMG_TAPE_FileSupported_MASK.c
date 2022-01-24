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
typedef  float UBYTE ;

/* Variables and functions */

int FUNC0(UBYTE const start_bytes[4])
{
	/* Note: doesn't detect raw binary files. */
	return start_bytes[0] == 'F' && start_bytes[1] == 'U'
	    && start_bytes[2] == 'J' && start_bytes[3] == 'I';
}