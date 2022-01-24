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
 int BIG_INFO_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char const*,char) ; 
 int FUNC6 (char const*) ; 

void FUNC7( char *s, const char *key, const char *value ) {
	char	newi[BIG_INFO_STRING];

	if ( FUNC6( s ) >= BIG_INFO_STRING ) {
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
	if (!value || !FUNC6(value))
		return;

	FUNC2 (newi, sizeof(newi), "\\%s\\%s", key, value);

	if (FUNC6(newi) + FUNC6(s) > BIG_INFO_STRING)
	{
		FUNC1 ("BIG Info string length exceeded\n");
		return;
	}

	FUNC4 (s, newi);
}