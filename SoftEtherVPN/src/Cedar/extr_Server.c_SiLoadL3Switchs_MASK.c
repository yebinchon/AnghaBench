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
typedef  size_t UINT ;
struct TYPE_7__ {int /*<<< orphan*/ * Cedar; } ;
struct TYPE_6__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ SERVER ;
typedef  int /*<<< orphan*/  L3SW ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(SERVER *s, FOLDER *f)
{
	UINT i;
	TOKEN_LIST *t;
	CEDAR *c;
	// Validate arguments
	if (s == NULL || f == NULL)
	{
		return;
	}
	c = s->Cedar;

	t = FUNC0(f);
	if (t != NULL)
	{
		for (i = 0;i < t->NumTokens;i++)
		{
			char *name = t->Token[i];
			L3SW *sw = FUNC3(c, name);

			FUNC5(sw, FUNC1(f, name));

			FUNC4(sw);
		}
	}
	FUNC2(t);
}