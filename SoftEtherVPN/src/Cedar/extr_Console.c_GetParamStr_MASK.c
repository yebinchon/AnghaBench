#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* StrValue; } ;
typedef  TYPE_1__ PARAM_VALUE ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 

char *FUNC1(LIST *o, char *name)
{
	PARAM_VALUE *v;
	// Validate arguments
	if (o == NULL)
	{
		return NULL;
	}

	v = FUNC0(o, name);
	if (v == NULL)
	{
		return NULL;
	}
	else
	{
		return v->StrValue;
	}
}