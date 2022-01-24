#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* chat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int MAX_CLIENTS ; 
 scalar_t__* botchatstates ; 
 TYPE_1__* consolemessageheap ; 
 TYPE_1__** ichatdata ; 
 int /*<<< orphan*/ * matchtemplates ; 
 TYPE_1__* randomstrings ; 
 int /*<<< orphan*/ * replychats ; 
 TYPE_1__* synonyms ; 

void FUNC4(void)
{
	int i;

	//free all remaining chat states
	for(i = 0; i < MAX_CLIENTS; i++)
	{
		if (botchatstates[i])
		{
			FUNC0(i);
		} //end if
	} //end for
	//free all cached chats
	for(i = 0; i < MAX_CLIENTS; i++)
	{
		if (ichatdata[i])
		{
			FUNC3(ichatdata[i]->chat);
			FUNC3(ichatdata[i]);
			ichatdata[i] = NULL;
		} //end if
	} //end for
	if (consolemessageheap) FUNC3(consolemessageheap);
	consolemessageheap = NULL;
	if (matchtemplates) FUNC1(matchtemplates);
	matchtemplates = NULL;
	if (randomstrings) FUNC3(randomstrings);
	randomstrings = NULL;
	if (synonyms) FUNC3(synonyms);
	synonyms = NULL;
	if (replychats) FUNC2(replychats);
	replychats = NULL;
}