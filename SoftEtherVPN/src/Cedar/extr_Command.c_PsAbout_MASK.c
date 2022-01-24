#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_18__ {int /*<<< orphan*/  Buf; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* Write ) (TYPE_1__*,char*) ;} ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ CONSOLE ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char*) ; 

UINT FUNC17(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	BUF *b;

	o = FUNC5(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	b = FUNC6("|legal.txt");

	FUNC0(c);
	c->Write(c, L"\r\n");

	if (b != NULL)
	{
		wchar_t *s;

		FUNC7(b);
		FUNC8(b, 13);
		FUNC8(b, 10);
		FUNC8(b, 0);

		s = FUNC1(b->Buf);

		c->Write(c, s);

		FUNC2(s);
	}

	// Display the version information
	c->Write(c, FUNC9("D_ABOUT@S_INFO3"));
	c->Write(c, L"\r\n");
	c->Write(c, FUNC9("D_ABOUT@S_INFO4"));
	c->Write(c, L"\r\n");
	FUNC0(c);
	c->Write(c, L"\r\n");

	FUNC4(o);

	FUNC3(b);

	return 0;
}