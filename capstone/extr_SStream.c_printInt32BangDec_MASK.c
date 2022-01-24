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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  SStream ;

/* Variables and functions */
 scalar_t__ INT_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

void FUNC1(SStream *O, int32_t val)
{
	if (val >= 0)
		FUNC0(O, "#%u", val);
	else
		if (val == INT_MIN)
			FUNC0(O, "#-%u", val);
		else
			FUNC0(O, "#-%u", (uint32_t)-val);
}