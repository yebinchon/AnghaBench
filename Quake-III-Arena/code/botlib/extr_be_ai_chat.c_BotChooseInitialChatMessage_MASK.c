#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* firstchatmessage; int /*<<< orphan*/  name; struct TYPE_6__* next; } ;
typedef  TYPE_1__ bot_chattype_t ;
struct TYPE_7__ {TYPE_4__* chat; } ;
typedef  TYPE_2__ bot_chatstate_t ;
struct TYPE_8__ {float time; char* chatmessage; struct TYPE_8__* next; } ;
typedef  TYPE_3__ bot_chatmessage_t ;
struct TYPE_9__ {TYPE_1__* types; } ;
typedef  TYPE_4__ bot_chat_t ;

/* Variables and functions */
 float FUNC0 () ; 
 float CHATMESSAGE_RECENTTIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 () ; 

char *FUNC3(bot_chatstate_t *cs, char *type)
{
	int n, numchatmessages;
	float besttime;
	bot_chattype_t *t;
	bot_chatmessage_t *m, *bestchatmessage;
	bot_chat_t *chat;

	chat = cs->chat;
	for (t = chat->types; t; t = t->next)
	{
		if (!FUNC1(t->name, type))
		{
			numchatmessages = 0;
			for (m = t->firstchatmessage; m; m = m->next)
			{
				if (m->time > FUNC0()) continue;
				numchatmessages++;
			} //end if
			//if all chat messages have been used recently
			if (numchatmessages <= 0)
			{
				besttime = 0;
				bestchatmessage = NULL;
				for (m = t->firstchatmessage; m; m = m->next)
				{
					if (!besttime || m->time < besttime)
					{
						bestchatmessage = m;
						besttime = m->time;
					} //end if
				} //end for
				if (bestchatmessage) return bestchatmessage->chatmessage;
			} //end if
			else //choose a chat message randomly
			{
				n = FUNC2() * numchatmessages;
				for (m = t->firstchatmessage; m; m = m->next)
				{
					if (m->time > FUNC0()) continue;
					if (--n < 0)
					{
						m->time = FUNC0() + CHATMESSAGE_RECENTTIME;
						return m->chatmessage;
					} //end if
				} //end for
			} //end else
			return NULL;
		} //end if
	} //end for
	return NULL;
}