#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  scalar_t__ UINT ;
typedef  char UCHAR ;
struct TYPE_5__ {scalar_t__ Param; } ;
struct TYPE_4__ {int /*<<< orphan*/ * OutFile; } ;
typedef  TYPE_1__ LOCAL_CONSOLE_PARAM ;
typedef  TYPE_2__ CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,char*) ; 
 char* FUNC7 (scalar_t__) ; 

void FUNC8(CONSOLE *c, wchar_t *str, bool add_last_crlf)
{
	LOCAL_CONSOLE_PARAM *p;
	// Validate arguments
	if (c == NULL || str == NULL)
	{
		return;
	}

	p = (LOCAL_CONSOLE_PARAM *)c->Param;

	if (p != NULL && p->OutFile != NULL)
	{
		wchar_t *tmp = FUNC5(str);
		UINT utf8_size;
		UCHAR *utf8;

		utf8_size = FUNC0(tmp);
		utf8 = FUNC7(utf8_size + 1);
		FUNC6(utf8, utf8_size + 1, tmp);

		FUNC1(p->OutFile, utf8, utf8_size);

		if (FUNC4(str, L"\n") == false && add_last_crlf)
		{
			char *crlf = "\r\n";
			FUNC1(p->OutFile, "\r\n", FUNC3(crlf));
		}

		FUNC2(utf8);
		FUNC2(tmp);
	}

}