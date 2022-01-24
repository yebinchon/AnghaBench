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
typedef  int /*<<< orphan*/  newi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char const*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char const*) ; 

void FUNC8( char *s, const char *key, const char *value ) {
	char	newi[MAX_INFO_STRING];

	if ( FUNC7( s ) >= MAX_INFO_STRING ) {
		FUNC0( ERR_DROP, "Info_SetValueForKey: oversize infostring" );
	}

	if (FUNC5 (key, '\\') || FUNC5 (value, '\\'))
	{
		FUNC1 ("Can't use keys or values with a \\\n");
		return;
	}

	if (FUNC5 (key, ';') || FUNC5 (value, ';'))
	{
		FUNC1 ("Can't use keys or values with a semicolon\n");
		return;
	}

	if (FUNC5 (key, '\"') || FUNC5 (value, '\"'))
	{
		FUNC1 ("Can't use keys or values with a \"\n");
		return;
	}

	FUNC3 (s, key);
	if (!value || !FUNC7(value))
		return;

	FUNC2 (newi, sizeof(newi), "\\%s\\%s", key, value);

	if (FUNC7(newi) + FUNC7(s) > MAX_INFO_STRING)
	{
		FUNC1 ("Info string length exceeded\n");
		return;
	}

	FUNC4 (newi, s);
	FUNC6 (s, newi);
}