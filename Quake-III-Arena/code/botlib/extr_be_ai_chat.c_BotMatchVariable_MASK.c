#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* variables; int /*<<< orphan*/ * string; } ;
typedef  TYPE_2__ bot_match_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_5__ {scalar_t__ offset; int length; } ;

/* Variables and functions */
 int MAX_MATCHVARIABLES ; 
 int /*<<< orphan*/  PRT_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__ botimport ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4(bot_match_t *match, int variable, char *buf, int size)
{
	if (variable < 0 || variable >= MAX_MATCHVARIABLES)
	{
		botimport.Print(PRT_FATAL, "BotMatchVariable: variable out of range\n");
		FUNC1(buf, "");
		return;
	} //end if

	if (match->variables[variable].offset >= 0)
	{
		if (match->variables[variable].length < size)
			size = match->variables[variable].length+1;
		FUNC0( match->variables[variable].offset >= 0 ); // bk001204
		FUNC2(buf, &match->string[ (int) match->variables[variable].offset], size-1);
		buf[size-1] = '\0';
	} //end if
	else
	{
		FUNC1(buf, "");
	} //end else
	return;
}