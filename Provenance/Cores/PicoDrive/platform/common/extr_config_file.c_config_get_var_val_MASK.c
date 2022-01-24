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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

int FUNC6(void *file, char *line, int lsize, char **rvar, char **rval)
{
	char *var, *val, *tmp;
	FILE *f = file;
	int len, i;

	tmp = FUNC0(line, lsize, f);
	if (tmp == NULL) return 0;

	if (line[0] == '[') return 0; // other section

	// strip comments, linefeed, spaces..
	len = FUNC4(line);
	for (i = 0; i < len; i++)
		if (line[i] == '#' || line[i] == '\r' || line[i] == '\n') { line[i] = 0; break; }
	FUNC2(line);
	len = FUNC4(line);
	if (len <= 0) return -1;;

	// get var and val
	for (i = 0; i < len; i++)
		if (line[i] == '=') break;
	if (i >= len || FUNC3(&line[i+1], '=') != NULL) {
		FUNC1("config_readsect: can't parse: %s\n", line);
		return -1;
	}
	line[i] = 0;
	var = line;
	val = &line[i+1];
	FUNC2(var);
	FUNC2(val);

#ifndef _MSC_VER
	if (FUNC4(var) == 0 || (FUNC4(val) == 0 && FUNC5(var, "bind", 4) != 0)) {
		FUNC1("config_readsect: something's empty: \"%s\" = \"%s\"\n", var, val);
		return -1;;
	}
#endif

	*rvar = var;
	*rval = val;
	return 1;
}