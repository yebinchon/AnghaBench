#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_10__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  Items; } ;
struct TYPE_9__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 void* FUNC5 (int) ; 

TOKEN_LIST *FUNC6(FOLDER *f)
{
	TOKEN_LIST *t, *ret;
	UINT i;
	// Validate arguments
	if (f == NULL)
	{
		return NULL;
	}

	t = FUNC5(sizeof(TOKEN_LIST));
	t->NumTokens = FUNC3(f->Items);
	t->Token = FUNC5(sizeof(char *) * t->NumTokens);

	for (i = 0;i < t->NumTokens;i++)
	{
		FOLDER *ff = FUNC2(f->Items, i);
		t->Token[i] = FUNC0(ff->Name);
	}

	ret = FUNC4(t);
	FUNC1(t);

	return ret;
}