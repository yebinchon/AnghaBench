#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; char* string; struct TYPE_8__* next; TYPE_4__* match; } ;
typedef  TYPE_2__ bot_replychatkey_t ;
struct TYPE_9__ {double priority; TYPE_5__* firstchatmessage; TYPE_2__* keys; struct TYPE_9__* next; } ;
typedef  TYPE_3__ bot_replychat_t ;
struct TYPE_10__ {scalar_t__ type; int variable; struct TYPE_10__* next; TYPE_1__* firststring; } ;
typedef  TYPE_4__ bot_matchpiece_t ;
struct TYPE_11__ {char* chatmessage; struct TYPE_11__* next; } ;
typedef  TYPE_5__ bot_chatmessage_t ;
struct TYPE_7__ {char* string; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 scalar_t__ MT_STRING ; 
 int RCKFL_AND ; 
 int RCKFL_GENDERFEMALE ; 
 int RCKFL_GENDERLESS ; 
 int RCKFL_GENDERMALE ; 
 int RCKFL_NAME ; 
 int RCKFL_NOT ; 
 int RCKFL_STRING ; 
 int RCKFL_VARIABLES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

void FUNC2(bot_replychat_t *replychat)
{
	FILE *fp;
	bot_replychat_t *rp;
	bot_replychatkey_t *key;
	bot_chatmessage_t *cm;
	bot_matchpiece_t *mp;

	fp = FUNC0();
	if (!fp) return;
	FUNC1(fp, "BotDumpReplyChat:\n");
	for (rp = replychat; rp; rp = rp->next)
	{
		FUNC1(fp, "[");
		for (key = rp->keys; key; key = key->next)
		{
			if (key->flags & RCKFL_AND) FUNC1(fp, "&");
			else if (key->flags & RCKFL_NOT) FUNC1(fp, "!");
			//
			if (key->flags & RCKFL_NAME) FUNC1(fp, "name");
			else if (key->flags & RCKFL_GENDERFEMALE) FUNC1(fp, "female");
			else if (key->flags & RCKFL_GENDERMALE) FUNC1(fp, "male");
			else if (key->flags & RCKFL_GENDERLESS) FUNC1(fp, "it");
			else if (key->flags & RCKFL_VARIABLES)
			{
				FUNC1(fp, "(");
				for (mp = key->match; mp; mp = mp->next)
				{
					if (mp->type == MT_STRING) FUNC1(fp, "\"%s\"", mp->firststring->string);
					else FUNC1(fp, "%d", mp->variable);
					if (mp->next) FUNC1(fp, ", ");
				} //end for
				FUNC1(fp, ")");
			} //end if
			else if (key->flags & RCKFL_STRING)
			{
				FUNC1(fp, "\"%s\"", key->string);
			} //end if
			if (key->next) FUNC1(fp, ", ");
			else FUNC1(fp, "] = %1.0f\n", rp->priority);
		} //end for
		FUNC1(fp, "{\n");
		for (cm = rp->firstchatmessage; cm; cm = cm->next)
		{
			FUNC1(fp, "\t\"%s\";\n", cm->chatmessage);
		} //end for
		FUNC1(fp, "}\n");
	} //end for
}