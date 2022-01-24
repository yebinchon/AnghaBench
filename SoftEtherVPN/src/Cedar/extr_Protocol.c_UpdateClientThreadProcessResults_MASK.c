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
struct TYPE_8__ {scalar_t__ LatestIgnoreBuild; } ;
struct TYPE_9__ {scalar_t__ MyBuild; scalar_t__ LatestBuild; int /*<<< orphan*/  Param; int /*<<< orphan*/  HaltFlag; int /*<<< orphan*/  (* Callback ) (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;TYPE_1__ Setting; int /*<<< orphan*/  FamilyName; } ;
typedef  TYPE_2__ UPDATE_CLIENT ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_10__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_3__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (char*) ; 
 TYPE_3__* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC12(UPDATE_CLIENT *c, BUF *b)
{
	bool exit = false;
	// Validate arguments
	if (c == NULL || b == NULL)
	{
		return;
	}

	FUNC5(b);

	while (true)
	{
		char *line = FUNC0(b);
		if (line == NULL)
		{
			break;
		}

		FUNC10(line);

		if (FUNC7(line, "#") == false && FUNC3(line) == false)
		{
			TOKEN_LIST *t = FUNC4(line, " \t");

			if (t != NULL)
			{
				if (t->NumTokens >= 5)
				{
					if (FUNC8(t->Token[0], c->FamilyName) == 0)
					{
						// Match
						UINT64 date = FUNC6(t->Token[1]);
						if (date != 0)
						{
							UINT build = FUNC9(t->Token[2]);
							if (build != 0)
							{
								if (build > c->MyBuild && build > c->LatestBuild && build > c->Setting.LatestIgnoreBuild)
								{
									c->Callback(c, build, date, t->Token[3], t->Token[4], &c->HaltFlag, c->Param);

									c->LatestBuild = build;

									exit = true;
								}
							}
						}
					}
				}

				FUNC2(t);
			}
		}

		FUNC1(line);

		if (exit)
		{
			break;
		}
	}
}