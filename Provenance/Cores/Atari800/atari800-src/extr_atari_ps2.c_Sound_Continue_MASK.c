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
struct audsrv_fmt_t {int bits; int freq; int channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_VOLUME ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct audsrv_fmt_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	if (FUNC2() != 0)
		FUNC0("failed to initialize audsrv: %s", FUNC1());
	else {
		struct audsrv_fmt_t format;
		format.bits = 8;
		format.freq = 44100;
		format.channels = 1;
		FUNC3(&format);
		FUNC4(MAX_VOLUME);
	}
}