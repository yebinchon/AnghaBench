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
 int /*<<< orphan*/  FUNC0 (unsigned short*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ menu_screen ; 

__attribute__((used)) static void FUNC3(int percent)
{
	int ln, len = percent * 320 / 100;
	unsigned short *dst;

	FUNC1(0);
	dst = (unsigned short *)menu_screen + 321*20;

	if (len > 320) len = 320;
	for (ln = 10; ln > 0; ln--, dst += 321)
		FUNC0(dst, 0xff, len*2);
	FUNC2();
}