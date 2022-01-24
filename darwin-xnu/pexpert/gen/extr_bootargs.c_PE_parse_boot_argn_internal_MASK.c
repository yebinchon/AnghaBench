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
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
#define  NUM 129 
 char* FUNC0 () ; 
#define  STR 128 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (long long,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char*,long long*,scalar_t__ (*) (char),scalar_t__) ; 
 scalar_t__ FUNC5 (char) ; 
 uintptr_t FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char*,char const*,uintptr_t) ; 

__attribute__((used)) static boolean_t
FUNC8(
	const char *arg_string,
	void *      arg_ptr,
	int         max_len,
	boolean_t   force_string)
{
	char *args;
	char *cp, c;
	uintptr_t i;
	long long val = 0;
	boolean_t arg_boolean;
	boolean_t arg_found;

	args = FUNC0();
	if (*args == '\0') return FALSE;

#ifdef CONFIG_EMBEDDED
	if (max_len == -1) return FALSE;
#endif

	arg_found = FALSE;

	while(*args && FUNC5(*args)) args++;

	while (*args)
	{
		if (*args == '-')
			arg_boolean = TRUE;
		else
			arg_boolean = FALSE;

		cp = args;
		while (!FUNC5 (*cp) && *cp != '=')
			cp++;
		if (*cp != '=' && !arg_boolean)
			goto gotit;

		c = *cp;

		i = cp-args;
		if (FUNC7(args, arg_string, i) ||
		    (i!=FUNC6(arg_string)))
			goto gotit;

		if (arg_boolean) {
			if (!force_string) {
				if (max_len > 0) {
					FUNC1(1, arg_ptr, max_len);/* max_len of 0 performs no copy at all*/
					arg_found = TRUE;
				}
				else if (max_len == 0) {	
					arg_found = TRUE;
				}
			}
			break;
		} else {
			while (*cp && FUNC5 (*cp))
				cp++;
			if (*cp == '=' && c != '=') {
				args = cp+1;
				goto gotit;
			}
			if ('_' == *arg_string) /* Force a string copy if the argument name begins with an underscore */
			{
				if (max_len > 0) {
					int hacklen = 17 > max_len ? 17 : max_len;
					FUNC3 (++cp, (char *)arg_ptr, hacklen - 1); /* Hack - terminate after 16 characters */
					arg_found = TRUE;
				}
				else if (max_len == 0) {
					arg_found = TRUE;
				}
				break;
			}
			switch ((force_string && *cp == '=') ? STR : FUNC4(cp, &val, isargsep, FALSE))
			{
				case NUM:
					if (max_len > 0) {
						FUNC1(val, arg_ptr, max_len);
						arg_found = TRUE;
					}
					else if (max_len == 0) {
						arg_found = TRUE;
					}
					break;
				case STR:
					if (max_len > 0) {
						FUNC3(++cp, (char *)arg_ptr, max_len - 1);/*max_len of 0 performs no copy at all*/
						arg_found = TRUE;
					}
					else if (max_len == 0) {
						arg_found = TRUE;
					}
#if !CONFIG_EMBEDDED
					else if (max_len == -1) { /* unreachable on embedded */
						FUNC2(++cp, (char *)arg_ptr);
						arg_found = TRUE;
					}
#endif
					break;
			}
			goto gotit;
		}
gotit:
		/* Skip over current arg */
		while(!FUNC5(*args)) args++;

		/* Skip leading white space (catch end of args) */
		while(*args && FUNC5(*args)) args++;
	}

	return(arg_found);
}