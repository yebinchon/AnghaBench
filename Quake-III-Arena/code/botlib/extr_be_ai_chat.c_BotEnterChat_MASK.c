#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  chatmessage; int /*<<< orphan*/  client; } ;
typedef  TYPE_1__ bot_chatstate_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  CHAT_TEAM 129 
#define  CHAT_TELL 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 TYPE_2__ botimport ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 

void FUNC8(int chatstate, int clientto, int sendto)
{
	bot_chatstate_t *cs;

	cs = FUNC0(chatstate);
	if (!cs) return;

	if (FUNC5(cs->chatmessage))
	{
		FUNC1(cs->chatmessage);
		if (FUNC3("bot_testichat")) {
			botimport.Print(PRT_MESSAGE, "%s\n", cs->chatmessage);
		}
		else {
			switch(sendto) {
				case CHAT_TEAM:
					FUNC2(cs->client, FUNC7("say_team %s", cs->chatmessage));
					break;
				case CHAT_TELL:
					FUNC2(cs->client, FUNC7("tell %d %s", clientto, cs->chatmessage));
					break;
				default: //CHAT_ALL
					FUNC2(cs->client, FUNC7("say %s", cs->chatmessage));
					break;
			}
		}
		//clear the chat message from the state
		FUNC4(cs->chatmessage, "");
	} //end if
}