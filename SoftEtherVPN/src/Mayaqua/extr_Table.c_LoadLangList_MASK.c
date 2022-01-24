#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_9__ {int /*<<< orphan*/ * LangList; int /*<<< orphan*/  LcidList; int /*<<< orphan*/  TitleLocal; int /*<<< orphan*/  TitleEnglish; int /*<<< orphan*/  Name; void* Id; } ;
struct TYPE_8__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ LANGLIST ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (char*) ; 
 char* LANGLIST_FILENAME ; 
 char* LANGLIST_FILENAME_WINE ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 int FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 void* FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC20 (int) ; 

LIST *FUNC21()
{
	LIST *o = FUNC10(NULL);
	char *filename = LANGLIST_FILENAME;
	BUF *b;

#ifdef	OS_WIN32
	if (MsIsWine())
	{
		filename = LANGLIST_FILENAME_WINE;
	}
#endif	// OS_WIN32

	b = FUNC12(filename);
	if (b == NULL)
	{
		return NULL;
	}

	while (true)
	{
		char *line = FUNC2(b);

		if (line == NULL)
		{
			break;
		}

		FUNC17(line);

		if (FUNC7(line) == false && FUNC13(line, "#") == false)
		{
			TOKEN_LIST *t = FUNC11(line, "\t ");
			if (t != NULL)
			{
				if (t->NumTokens == 6)
				{
					LANGLIST *e = FUNC20(sizeof(LANGLIST));
					TOKEN_LIST *t2;

					e->Id = FUNC16(t->Token[0]);
					FUNC14(e->Name, sizeof(e->Name), t->Token[1]);
					FUNC19(e->TitleEnglish, sizeof(e->TitleEnglish), t->Token[2], FUNC15(t->Token[2]));
					FUNC19(e->TitleLocal, sizeof(e->TitleLocal), t->Token[3], FUNC15(t->Token[3]));

					FUNC18(e->TitleEnglish, sizeof(e->TitleEnglish), e->TitleEnglish,
						L"_", L" ", true);

					FUNC18(e->TitleLocal, sizeof(e->TitleLocal), e->TitleLocal,
						L"_", L" ", true);

					e->LcidList = FUNC9(false);

					t2 = FUNC11(t->Token[4], ",");
					if (t2 != NULL)
					{
						UINT i;

						for (i = 0;i < t2->NumTokens;i++)
						{
							UINT id = FUNC16(t2->Token[i]);

							FUNC1(e->LcidList, id);
						}

						FUNC6(t2);
					}

					e->LangList = FUNC10(NULL);

					t2 = FUNC11(t->Token[5], ",");
					if (t2 != NULL)
					{
						UINT i;

						for (i = 0;i < t2->NumTokens;i++)
						{
							FUNC0(e->LangList, FUNC3(t2->Token[i]));
						}

						FUNC6(t2);
					}

					FUNC0(o, e);
				}

				FUNC6(t);
			}
		}

		FUNC4(line);
	}

	FUNC5(b);

	return o;
}