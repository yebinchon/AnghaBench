#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  elements; } ;
struct TYPE_7__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ PACK ;
typedef  TYPE_3__ ELEMENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 

TOKEN_LIST *FUNC4(PACK *p)
{
	TOKEN_LIST *ret;
	UINT i;
	// Validate arguments
	if (p == NULL)
	{
		return NULL;
	}

	ret = FUNC3(sizeof(TOKEN_LIST));

	ret->NumTokens = FUNC2(p->elements);
	ret->Token = FUNC3(sizeof(char *) * ret->NumTokens);

	for (i = 0;i < ret->NumTokens;i++)
	{
		ELEMENT *e = FUNC1(p->elements, i);

		ret->Token[i] = FUNC0(e->name);
	}

	return ret;
}