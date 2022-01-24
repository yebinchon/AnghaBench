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
struct uthread {int /*<<< orphan*/  pth_name; } ;

/* Variables and functions */
 scalar_t__ MAXTHREADNAMESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRACE_STRING_THREADNAME ; 
 int /*<<< orphan*/  TRACE_STRING_THREADNAME_PREV ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 

void
FUNC7(void *uth, const char *name) {
	struct uthread *ut = (struct uthread *)uth;
	char * name_buf = NULL;

	if (!ut->pth_name) {
		/* If there is no existing thread name, allocate a buffer for one. */
		name_buf = FUNC3(MAXTHREADNAMESIZE);
		FUNC1(name_buf);
		FUNC2(name_buf, MAXTHREADNAMESIZE);

		/* Someone could conceivably have named the thread at the same time we did. */
		if (!FUNC0(NULL, name_buf, &ut->pth_name)) {
			FUNC5(name_buf, MAXTHREADNAMESIZE);
		}
	} else {
		FUNC4(TRACE_STRING_THREADNAME_PREV, ut->pth_name);
	}

	FUNC6(ut->pth_name, name, MAXTHREADNAMESIZE - 1);
	FUNC4(TRACE_STRING_THREADNAME, ut->pth_name);
}