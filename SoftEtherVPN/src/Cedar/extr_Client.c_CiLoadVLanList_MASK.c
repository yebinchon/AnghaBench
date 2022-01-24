#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_8__ {int /*<<< orphan*/  UnixVLanList; } ;
struct TYPE_7__ {size_t NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_2__ CLIENT ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(CLIENT *c, FOLDER *f)
{
	TOKEN_LIST *t;
	// Validate arguments
	if (c == NULL || f == NULL)
	{
		return;
	}

	t = FUNC0(f);

	FUNC4(c->UnixVLanList);
	{
		UINT i;
		for (i = 0;i < t->NumTokens;i++)
		{
			FOLDER *folder = FUNC1(f, t->Token[i]);
			FUNC2(c, folder);
		}
	}
	FUNC5(c->UnixVLanList);

	FUNC3(t);
}