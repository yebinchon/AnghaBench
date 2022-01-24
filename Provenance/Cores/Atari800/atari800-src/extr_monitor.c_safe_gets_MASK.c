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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC8(char *buffer, size_t size, char const *prompt)
{
#ifdef HAVE_FFLUSH
	fflush(stdout);
#endif

#ifdef MONITOR_READLINE
	{
		char *got = readline(prompt);
		if (got) {
			strncpy(buffer, got, size);
			if (*got)
				add_history(got);
			free(got); /* Need to free buffer allocated by readline() */
		}
	}
#else
	FUNC4(prompt, stdout);
	FUNC3(buffer, size, stdin);
#endif
	FUNC0(buffer);
}