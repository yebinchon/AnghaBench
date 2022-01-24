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
typedef  size_t UINT ;
struct TYPE_3__ {size_t NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 

TOKEN_LIST *FUNC4(LIST *o)
{
	UINT i;
	TOKEN_LIST *t;
	// Validate arguments
	if (o == NULL)
	{
		return NULL;
	}

	t = FUNC3(sizeof(TOKEN_LIST));
	t->NumTokens = FUNC2(o);
	t->Token = FUNC3(sizeof(char *) * t->NumTokens);
	for (i = 0;i < FUNC2(o);i++)
	{
		t->Token[i] = FUNC0(FUNC1(o, i));
	}

	return t;
}