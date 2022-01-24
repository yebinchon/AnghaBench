#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  UserHashList; int /*<<< orphan*/  Filename; } ;
typedef  TYPE_1__ USERLIST ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  ACCESS_LIST_INCLUDE_FILE_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 TYPE_1__* FUNC15 (int) ; 

USERLIST *FUNC16(LIST *o, char *filename)
{
	USERLIST *u;
	BUF *b;
	// Validate arguments
	if (o == NULL || filename == NULL)
	{
		return NULL;
	}

	u = FUNC4(o, filename);

	if (u != NULL)
	{
		FUNC3(o, u);

		FUNC7(u);
	}

	u = FUNC15(sizeof(USERLIST));

	FUNC12(u->Filename, sizeof(u->Filename), filename);

	u->UserHashList = FUNC9(false);

	b = FUNC10(filename, ACCESS_LIST_INCLUDE_FILE_MAX_SIZE);
	if (b != NULL)
	{
		while (true)
		{
			char *line = FUNC2(b);
			UINT64 ui;
			if (line == NULL)
			{
				break;
			}

			FUNC13(line);

			if (FUNC8(line) == false)
			{
				if (FUNC11(line, "#") == false &&
					FUNC11(line, "//") == false &&
					FUNC11(line, ";") == false)
				{
					ui = FUNC14(line);

					FUNC1(u->UserHashList, ui);
				}
			}

			FUNC5(line);
		}

		FUNC6(b);
	}

	FUNC0(o, u);

	return u;
}