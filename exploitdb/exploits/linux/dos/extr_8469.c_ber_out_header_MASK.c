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
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(STREAM s, int tagval, int length)
{
	if (tagval > 0xff)
	{
		FUNC0(s, tagval);
	}
	else
	{
		FUNC1(s, tagval);
	}

	if (length >= 0x80)
	{
		FUNC1(s, 0x82);
		FUNC0(s, length);
	}
	else
		FUNC1(s, length);
}