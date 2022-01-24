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
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const,char const) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(const char *pattern, const char *filename)
{
	if (FUNC1(pattern, "*.*") == 0)
		return TRUE;

	for (;;) {
		switch (*pattern) {
		case '\0':
			return (*filename == '\0');
		case '?':
			if (*filename == '\0' || *filename == '.')
				return FALSE;
			pattern++;
			filename++;
			break;
		case '*':
			if (FUNC0(*filename, pattern[1]))
				pattern++;
			else if (*filename == '\0')
				return FALSE; /* because pattern[1] != '\0' */
			else
				filename++;
			break;
		default:
			if (!FUNC0(*pattern, *filename))
				return FALSE;
			pattern++;
			filename++;
			break;
		}
	}
}