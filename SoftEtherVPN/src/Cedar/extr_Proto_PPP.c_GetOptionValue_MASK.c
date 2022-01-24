#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  OptionList; } ;
struct TYPE_6__ {scalar_t__ Type; } ;
typedef  TYPE_1__ PPP_OPTION ;
typedef  TYPE_2__ PPP_LCP ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

PPP_OPTION *FUNC2(PPP_LCP *c, UCHAR type)
{
	UINT i;
	// Validate arguments
	if (c == NULL)
	{
		return NULL;
	}

	for (i = 0;i < FUNC1(c->OptionList);i++)
	{
		PPP_OPTION *t = FUNC0(c->OptionList, i);

		if (t->Type == type)
		{
			return t;
		}
	}

	return NULL;
}