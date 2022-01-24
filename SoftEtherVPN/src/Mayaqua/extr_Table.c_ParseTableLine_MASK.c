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
typedef  char wchar_t ;
typedef  size_t UINT ;
struct TYPE_4__ {char* name; char* unistr; char* str; } ;
typedef  TYPE_1__ TABLE ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 size_t FUNC0 (char*) ; 
 size_t FUNC1 (char*,size_t) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t,char*) ; 
 size_t FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,size_t,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,size_t,char*) ; 
 int FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,size_t,char*,size_t) ; 
 char* FUNC21 (size_t) ; 

TABLE *FUNC22(char *line, char *prefix, UINT prefix_size, LIST *replace_list)
{
	UINT i, len;
	UINT len_name;
	UINT string_start;
	char *name;
	char *name2;
	UINT name2_size;
	wchar_t *unistr;
	char *str;
	UINT unistr_size, str_size;
	TABLE *t;
	// Validate arguments
	if (line == NULL || prefix == NULL)
	{
		return NULL;
	}
	FUNC13(line);

	// No line
	len = FUNC10(line);
	if (len == 0)
	{
		return NULL;
	}

	// Comment
	if (line[0] == '#' || (line[0] == '/' && line[1] == '/'))
	{
		return NULL;
	}

	// Search to the end position of the name
	len_name = 0;
	for (i = 0;;i++)
	{
		if (line[i] == 0)
		{
			// There is only one token
			return NULL;
		}
		if (line[i] == ' ' || line[i] == '\t')
		{
			break;
		}
		len_name++;
	}

	name = FUNC6(len_name + 1);
	FUNC9(name, len_name + 1, line);

	string_start = len_name;
	for (i = len_name;i < len;i++)
	{
		if (line[i] != ' ' && line[i] != '\t')
		{
			break;
		}
		string_start++;
	}
	if (i == len)
	{
		FUNC3(name);
		return NULL;
	}

	// Unescape
	FUNC14(&line[string_start]);

	// Convert to Unicode
	unistr_size = FUNC1(&line[string_start], FUNC10(&line[string_start]));
	if (unistr_size == 0)
	{
		FUNC3(name);
		return NULL;
	}
	unistr = FUNC6(unistr_size);
	FUNC20(unistr, unistr_size, &line[string_start], FUNC10(&line[string_start]));

	if (FUNC15(unistr, L'$'))
	{
		// Replace the replacement string
		wchar_t *tmp;
		UINT tmp_size = (FUNC18(unistr) + 1024) * 2;
		UINT i;

		tmp = FUNC6(tmp_size);

		FUNC17(tmp, tmp_size, unistr);

		for (i = 0; i < FUNC5(replace_list);i++)
		{
			TABLE *r = FUNC4(replace_list, i);

			FUNC16(tmp, tmp_size, tmp, (wchar_t *)r->name, r->unistr, false);
		}

		FUNC3(unistr);

		unistr = FUNC2(tmp);

		FUNC3(tmp);
	}

	// Convert to ANSI
	str_size = FUNC0(unistr);
	if (str_size == 0)
	{
		str_size = 1;
		str = FUNC6(1);
		str[0] = 0;
	}
	else
	{
		str = FUNC6(str_size);
		FUNC19(str, str_size, unistr);
	}

	if (FUNC8(name, "PREFIX") == 0)
	{
		// Prefix is specified
		FUNC9(prefix, prefix_size, str);
		FUNC12(prefix);

		if (FUNC8(prefix, "$") == 0 || FUNC8(prefix, "NULL") == 0)
		{
			prefix[0] = 0;
		}

		FUNC3(name);
		FUNC3(str);
		FUNC3(unistr);

		return NULL;
	}

	name2_size = FUNC10(name) + FUNC10(prefix) + 2;
	name2 = FUNC21(name2_size);

	if (prefix[0] != 0)
	{
		FUNC7(name2, name2_size, prefix);
		FUNC7(name2, name2_size, "@");
	}

	FUNC7(name2, name2_size, name);

	FUNC3(name);

	// Create a TABLE
	t = FUNC6(sizeof(TABLE));
	FUNC11(name2);
	t->name = name2;
	t->str = str;
	t->unistr = unistr;

	return t;
}