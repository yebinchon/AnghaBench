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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

FUNC1()
{
	int i, n=0;

	FUNC0("h:\n");
	for (i = 1; i <= 500; i++)
		switch (i) {
		default: n++; continue;
		case 128: FUNC0("i = %d\n", i); break;
		case 16: FUNC0("i = %d\n", i); break;
		case 8: FUNC0("i = %d\n", i); break;
		case 120: FUNC0("i = %d\n", i); break;
		case 280: FUNC0("i = %d\n", i); break;
		case 264: FUNC0("i = %d\n", i); break;
		case 248: FUNC0("i = %d\n", i); break;
		case 272: FUNC0("i = %d\n", i); break;
		case 304: FUNC0("i = %d\n", i); break;
		case 296: FUNC0("i = %d\n", i); break;
		case 288: FUNC0("i = %d\n", i); break;
		case 312: FUNC0("i = %d\n", i); break;
		}
	FUNC0("%d defaults\n", n);
}