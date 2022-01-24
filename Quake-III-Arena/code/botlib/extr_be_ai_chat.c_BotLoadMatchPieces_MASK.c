#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ type; int subtype; scalar_t__ intvalue; scalar_t__ string; } ;
typedef  TYPE_1__ token_t ;
typedef  int /*<<< orphan*/  source_t ;
struct TYPE_9__ {char* string; struct TYPE_9__* next; } ;
typedef  TYPE_2__ bot_matchstring_t ;
struct TYPE_10__ {scalar_t__ variable; TYPE_2__* firststring; struct TYPE_10__* next; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ bot_matchpiece_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ MAX_MATCHVARIABLES ; 
 int /*<<< orphan*/  MT_STRING ; 
 int /*<<< orphan*/  MT_VARIABLE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int TT_INTEGER ; 
 scalar_t__ TT_NUMBER ; 
 scalar_t__ TT_STRING ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 int FUNC10 (scalar_t__) ; 

bot_matchpiece_t *FUNC11(source_t *source, char *endtoken)
{
	int lastwasvariable, emptystring;
	token_t token;
	bot_matchpiece_t *matchpiece, *firstpiece, *lastpiece;
	bot_matchstring_t *matchstring, *lastmatchstring;

	firstpiece = NULL;
	lastpiece = NULL;
	//
	lastwasvariable = qfalse;
	//
	while(FUNC6(source, &token))
	{
		if (token.type == TT_NUMBER && (token.subtype & TT_INTEGER))
		{
			if (token.intvalue < 0 || token.intvalue >= MAX_MATCHVARIABLES)
			{
				FUNC7(source, "can't have more than %d match variables\n", MAX_MATCHVARIABLES);
				FUNC1(source);
				FUNC0(firstpiece);
				return NULL;
			} //end if
			if (lastwasvariable)
			{
				FUNC7(source, "not allowed to have adjacent variables\n");
				FUNC1(source);
				FUNC0(firstpiece);
				return NULL;
			} //end if
			lastwasvariable = qtrue;
			//
			matchpiece = (bot_matchpiece_t *) FUNC2(sizeof(bot_matchpiece_t));
			matchpiece->type = MT_VARIABLE;
			matchpiece->variable = token.intvalue;
			matchpiece->next = NULL;
			if (lastpiece) lastpiece->next = matchpiece;
			else firstpiece = matchpiece;
			lastpiece = matchpiece;
		} //end if
		else if (token.type == TT_STRING)
		{
			//
			matchpiece = (bot_matchpiece_t *) FUNC2(sizeof(bot_matchpiece_t));
			matchpiece->firststring = NULL;
			matchpiece->type = MT_STRING;
			matchpiece->variable = 0;
			matchpiece->next = NULL;
			if (lastpiece) lastpiece->next = matchpiece;
			else firstpiece = matchpiece;
			lastpiece = matchpiece;
			//
			lastmatchstring = NULL;
			emptystring = qfalse;
			//
			do
			{
				if (matchpiece->firststring)
				{
					if (!FUNC5(source, TT_STRING, 0, &token))
					{
						FUNC1(source);
						FUNC0(firstpiece);
						return NULL;
					} //end if
				} //end if
				FUNC8(token.string);
				matchstring = (bot_matchstring_t *) FUNC2(sizeof(bot_matchstring_t) + FUNC10(token.string) + 1);
				matchstring->string = (char *) matchstring + sizeof(bot_matchstring_t);
				FUNC9(matchstring->string, token.string);
				if (!FUNC10(token.string)) emptystring = qtrue;
				matchstring->next = NULL;
				if (lastmatchstring) lastmatchstring->next = matchstring;
				else matchpiece->firststring = matchstring;
				lastmatchstring = matchstring;
			} while(FUNC3(source, "|"));
			//if there was no empty string found
			if (!emptystring) lastwasvariable = qfalse;
		} //end if
		else
		{
			FUNC7(source, "invalid token %s\n", token.string);
			FUNC1(source);
			FUNC0(firstpiece);
			return NULL;
		} //end else
		if (FUNC3(source, endtoken)) break;
		if (!FUNC4(source, ","))
		{
			FUNC1(source);
			FUNC0(firstpiece);
			return NULL;
		} //end if
	} //end while
	return firstpiece;
}