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
typedef  int /*<<< orphan*/  bot_movestate_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int MAX_CLIENTS ; 
 scalar_t__* botmovestates ; 

int FUNC1(void)
{
	int i;

	for (i = 1; i <= MAX_CLIENTS; i++)
	{
		if (!botmovestates[i])
		{
			botmovestates[i] = FUNC0(sizeof(bot_movestate_t));
			return i;
		} //end if
	} //end for
	return 0;
}