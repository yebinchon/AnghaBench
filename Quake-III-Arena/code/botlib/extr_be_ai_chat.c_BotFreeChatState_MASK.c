#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bot_consolemessage_t ;
typedef  int /*<<< orphan*/  bot_chatstate_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*) ; 
 int MAX_CLIENTS ; 
 int /*<<< orphan*/  PRT_FATAL ; 
 int /*<<< orphan*/ ** botchatstates ; 
 TYPE_1__ botimport ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC7(int handle)
{
	bot_chatstate_t *cs;
	bot_consolemessage_t m;
	int h;

	if (handle <= 0 || handle > MAX_CLIENTS)
	{
		botimport.Print(PRT_FATAL, "chat state handle %d out of range\n", handle);
		return;
	} //end if
	if (!botchatstates[handle])
	{
		botimport.Print(PRT_FATAL, "invalid chat state %d\n", handle);
		return;
	} //end if
	cs = botchatstates[handle];
	if (FUNC4("bot_reloadcharacters"))
	{
		FUNC0(handle);
	} //end if
	//free all the console messages left in the chat state
	for (h = FUNC1(handle, &m); h; h = FUNC1(handle, &m))
	{
		//remove the console message
		FUNC2(handle, h);
	} //end for
	FUNC3(botchatstates[handle]);
	botchatstates[handle] = NULL;
}