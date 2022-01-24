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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ mp3dec ; 

int FUNC2(FILE *f, int fpos_start)
{
	// must re-init decoder for new track
	if (mp3dec)
		FUNC0(mp3dec);
	mp3dec = FUNC1();

	return (mp3dec == 0) ? -1 : 0;
}