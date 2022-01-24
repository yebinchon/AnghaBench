#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  HUB ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(HUB *h, FOLDER *f)
{
	TOKEN_LIST *t;
	UINT i;
	// Validate arguments
	if (f == NULL || h == NULL)
	{
		return;
	}

	t = FUNC0(f);

	for (i = 0;i < t->NumTokens;i++)
	{
		char *name = t->Token[i];
		FUNC3(h, FUNC1(f, name));
	}

	FUNC2(t);
}