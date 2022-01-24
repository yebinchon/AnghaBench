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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,float,int /*<<< orphan*/ ) ; 
 char* DEFAULT_CHARACTER ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * botcharacters ; 
 int /*<<< orphan*/  qfalse ; 

int FUNC3(char *charfile, float skill)
{
	int ch, defaultch;

	defaultch = FUNC1(DEFAULT_CHARACTER, skill, qfalse);
	ch = FUNC1(charfile, skill, FUNC2("bot_reloadcharacters"));

	if (defaultch && ch)
	{
		FUNC0(botcharacters[ch], botcharacters[defaultch]);
	} //end if

	return ch;
}