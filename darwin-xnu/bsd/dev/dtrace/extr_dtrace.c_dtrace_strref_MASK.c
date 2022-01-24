#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* dtst_str; int dtst_refcount; } ;
typedef  TYPE_1__ dtrace_string_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__** FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  dtrace_strings ; 
 TYPE_1__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,size_t) ; 

__attribute__((used)) static char *
FUNC9(const char *str)
{
	dtrace_string_t *s = NULL;
	size_t bufsize = (str != NULL ? FUNC7(str) : 0) + 1;

	FUNC2(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

	if (str == NULL)
		str = "";

	for (s = FUNC4(dtrace_strings, str); s != NULL;
	     s = *(FUNC1(dtrace_strings, s)))  {
		if (FUNC8(str, s->dtst_str, bufsize) != 0) {
			continue;
		}
		FUNC0(s->dtst_refcount != UINT32_MAX);
		s->dtst_refcount++;
		return s->dtst_str;
	}

	s = FUNC5(sizeof(dtrace_string_t) + bufsize, KM_SLEEP);
	s->dtst_refcount = 1;
	(void) FUNC6(s->dtst_str, str, bufsize);

	FUNC3(dtrace_strings, s);

	return s->dtst_str;
}