#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  size_t UINT ;
struct TYPE_6__ {int (* GetWidth ) (TYPE_1__*) ;int /*<<< orphan*/  (* Write ) (TYPE_1__*,char*) ;} ;
typedef  TYPE_1__ CONSOLE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 size_t FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (size_t) ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 

void FUNC13(CONSOLE *c, UINT num, UINT *widths, wchar_t **strings, bool *rights, char separate_char)
{
	UINT i;
	wchar_t *buf;
	UINT buf_size;
	bool is_sep_line = true;
	// Validate arguments
	if (c == NULL || num == 0 || widths == NULL || strings == NULL || rights == NULL)
	{
		return;
	}

	buf_size = 32;
	for (i = 0;i < num;i++)
	{
		buf_size += sizeof(wchar_t) * widths[i] + 6;
	}

	buf = FUNC9(buf_size);

	for (i = 0;i < num;i++)
	{
		char *tmp;
		wchar_t *space_string;
		UINT w;
		UINT space = 0;
		wchar_t *string = strings[i];
		wchar_t *tmp_line = NULL;

		if (FUNC5(string, L"---") == 0)
		{
			char *s = FUNC2('-', widths[i]);
			tmp_line = string = FUNC0(s);

			FUNC1(s);
		}
		else
		{
			is_sep_line = false;
		}

		w = FUNC7(string);

		if (widths[i] >= w)
		{
			space = widths[i] - w;
		}

		tmp = FUNC2(' ', space);
		space_string = FUNC0(tmp);

		if (rights[i] != false)
		{
			FUNC4(buf, buf_size, space_string);
		}

		FUNC4(buf, buf_size, string);

		if (rights[i] == false)
		{
			FUNC4(buf, buf_size, space_string);
		}

		FUNC1(space_string);
		FUNC1(tmp);

		if (i < (num - 1))
		{
			wchar_t tmp[4];
			char str[2];

			if (FUNC5(strings[i], L"---") == 0)
			{
				str[0] = '+';
			}
			else
			{
				str[0] = separate_char;
			}
			str[1] = 0;

			FUNC3(tmp, sizeof(tmp), str);

			FUNC4(buf, buf_size, tmp);
		}

		if (tmp_line != NULL)
		{
			FUNC1(tmp_line);
		}
	}

	FUNC8(buf);

	if (is_sep_line)
	{
		if (FUNC6(buf) > (c->GetWidth(c) - 1))
		{
			buf[c->GetWidth(c) - 1] = 0;
		}
	}

	c->Write(c, buf);

	FUNC1(buf);
}