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
 unsigned int FUNC0 (char const*,unsigned int) ; 

size_t FUNC1(const char *source)
{
	unsigned int n, r;
	n = (((*source) & 2) == 2) ? 4 : 1;
	r = FUNC0(source + 1 + n, n);
	r = r & (0xffffffff >> ((4 - n)*8));
	return r;
}