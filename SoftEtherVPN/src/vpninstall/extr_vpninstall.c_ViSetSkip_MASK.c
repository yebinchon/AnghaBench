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
 scalar_t__ MESSAGE_OFFSET_EN ; 
 scalar_t__ MESSAGE_OFFSET_JP ; 
 int FUNC0 () ; 
 scalar_t__ skip ; 

void FUNC1()
{
	skip = 0;

	if (FUNC0() == false)
	{
		skip = MESSAGE_OFFSET_EN - MESSAGE_OFFSET_JP;
	}
}