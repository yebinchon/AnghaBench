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
 int lcdr_line ; 
 int /*<<< orphan*/  FUNC0 (unsigned short*,int,int) ; 
 scalar_t__ menu_screen ; 
 int /*<<< orphan*/  romFileName ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(int percent)
{
	int ln, len = percent * 480 / 100;
	unsigned short *dst;

	if (lcdr_line <= 2) {
		lcdr_line++;
		FUNC1(1, lcdr_line++ * 10, "Processing CD image / MP3s", 0xffff);
		FUNC2(1, lcdr_line++ * 10, romFileName, 0xffff, 80);
	}

	dst = (unsigned short *)menu_screen + 512*10*lcdr_line;

	if (len > 480) len = 480;
	for (ln = 8; ln > 0; ln--, dst += 512)
		FUNC0(dst, 0xff, len*2);
}