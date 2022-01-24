#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ UINT ;
struct TYPE_11__ {int /*<<< orphan*/  Size; } ;
struct TYPE_10__ {int /*<<< orphan*/  TitleLocal; int /*<<< orphan*/  TitleEnglish; int /*<<< orphan*/  Name; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ LANGLIST ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LANG_CONFIG_TEMPLETE ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int MAX_SIZE ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC11(wchar_t *filename, char *str)
{
	BUF *b;
	LIST *o;
	UINT i;
	bool ret;
	// Validate arguments
	if (filename == NULL)
	{
		return false;
	}

	// Read the template
	b = FUNC8(LANG_CONFIG_TEMPLETE);
	if (b == NULL)
	{
		return false;
	}

	FUNC9(b, b->Size, 0);

	o = FUNC7();
	if (o != NULL)
	{
		wchar_t tmp[MAX_SIZE];

		FUNC0(b, "# Available Language IDs are:\r\n");

		for (i = 0;i < FUNC6(o);i++)
		{
			LANGLIST *e = FUNC5(o, i);

			FUNC10(tmp, sizeof(tmp), L"#  %S: %s (%s)\r\n",
				e->Name, e->TitleEnglish, e->TitleLocal);

			FUNC1(b, tmp);
		}

		FUNC0(b, "\r\n\r\n# Specify a Language ID here.\r\n");
		FUNC0(b, str);
		FUNC0(b, "\r\n\r\n");

		FUNC4(o);
	}

	ret = FUNC2(b, filename);

	FUNC3(b);

	return ret;
}