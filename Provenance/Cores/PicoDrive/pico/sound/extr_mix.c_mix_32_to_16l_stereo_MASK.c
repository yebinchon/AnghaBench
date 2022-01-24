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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAXOUT ; 
 int /*<<< orphan*/  MINOUT ; 

void FUNC1(short *dest, int *src, int count)
{
	int l, r;

	for (; count > 0; count--)
	{
		l = r = *dest;
		l += *src++;
		r += *src++;
		FUNC0( l, MAXOUT, MINOUT );
		FUNC0( r, MAXOUT, MINOUT );
		*dest++ = l;
		*dest++ = r;
	}
}