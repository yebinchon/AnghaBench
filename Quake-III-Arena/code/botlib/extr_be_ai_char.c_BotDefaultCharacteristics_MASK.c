#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* c; } ;
typedef  TYPE_3__ bot_character_t ;
struct TYPE_6__ {char* string; int /*<<< orphan*/  integer; int /*<<< orphan*/  _float; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ value; } ;

/* Variables and functions */
 scalar_t__ CT_FLOAT ; 
 scalar_t__ CT_INTEGER ; 
 scalar_t__ CT_STRING ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int MAX_CHARACTERISTICS ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

void FUNC3(bot_character_t *ch, bot_character_t *defaultch)
{
	int i;

	for (i = 0; i < MAX_CHARACTERISTICS; i++)
	{
		if (ch->c[i].type) continue;
		//
		if (defaultch->c[i].type == CT_FLOAT)
		{
			ch->c[i].type = CT_FLOAT;
			ch->c[i].value._float = defaultch->c[i].value._float;
		} //end if
		else if (defaultch->c[i].type == CT_INTEGER)
		{
			ch->c[i].type = CT_INTEGER;
			ch->c[i].value.integer = defaultch->c[i].value.integer;
		} //end else if
		else if (defaultch->c[i].type == CT_STRING)
		{
			ch->c[i].type = CT_STRING;
			ch->c[i].value.string = (char *) FUNC0(FUNC2(defaultch->c[i].value.string)+1);
			FUNC1(ch->c[i].value.string, defaultch->c[i].value.string);
		} //end else if
	} //end for
}