#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 char const* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static const char *FUNC8(const char *include, const char *base)
{
	const char *ps, *pe;
	char processed_inc[128];

	for (ps = include; *ps && FUNC2(*ps); ps++);

	if (*ps == '<')
	{
		int len = 1;
		// system include, search for '>'
		for (pe = ps; *pe && *pe != '>'; pe++, len++);
		if (*pe == 0 || len > 127) FUNC1("add_raw_include: failed sysinclude, len=%i\n", len);
		FUNC6(processed_inc, ps, len);
		processed_inc[len] = 0;
	}
	else if (*ps == '\"')
	{
		int len, pos;
		// relative include, make path absolute (or relative to base dir)
		FUNC3(processed_inc, base);
		ps++;
		while (*ps == '.')
		{
			if (FUNC5(ps, "../", 3) == 0)
			{
				char *p;
				if (processed_inc[0] == 0)
					FUNC1("add_raw_include: already in root, can't go down: %s | %s\n", ps, include);
				p = FUNC7(processed_inc, '/');
				if (p == NULL) FUNC1("add_raw_include: can't happen\n");
				*p = 0;
				p = FUNC7(processed_inc, '/');
				if (p != NULL) p[1] = 0;
				else processed_inc[0] = 0;
				ps += 3;
			}
			else if (FUNC5(ps, "./", 2) == 0)
			{
				ps += 2; // just skip
			}
			while (*ps == '/') ps++;
		}
		if (*ps == 0) FUNC1("add_raw_include: failed with %s\n", include);

		len = pos = FUNC4(processed_inc);
		for (pe = ps; *pe && *pe != '\"'; pe++, len++);
		if (*pe == 0 || len > 127) FUNC1("add_raw_include: failed with %s, len=%i\n", include, len);
		FUNC6(processed_inc + pos, ps, len - pos);
		processed_inc[len] = 0;
	}
	else
		FUNC1("add_raw_include: unhandled include: %s\n", ps);

	return FUNC0(processed_inc);
}