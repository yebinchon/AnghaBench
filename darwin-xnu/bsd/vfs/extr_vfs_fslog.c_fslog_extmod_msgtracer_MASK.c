#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char* uuid_string_t ;
typedef  int /*<<< orphan*/  t_name ;
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  c_name ;
struct TYPE_6__ {int /*<<< orphan*/  p_uuid; int /*<<< orphan*/  p_comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int MAXCOMLEN ; 
 TYPE_1__* PROC_NULL ; 
 scalar_t__ FUNC0 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,char*,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void
FUNC8(proc_t caller, proc_t target)
{
	if ((caller != PROC_NULL) && (target != PROC_NULL)) {

		/*
		 * Print into buffer large enough for "ThisIsAnApplicat(BC223DD7-B314-42E0-B6B0-C5D2E6638337)",
		 * including space for escaping, and NUL byte included in sizeof(uuid_string_t).
		 */

		uuid_string_t uuidstr;
		char c_name[2*MAXCOMLEN + 2 /* () */ + sizeof(uuid_string_t)];
		char t_name[2*MAXCOMLEN + 2 /* () */ + sizeof(uuid_string_t)];

		FUNC5(c_name, caller->p_comm, sizeof(c_name));
		FUNC7(caller->p_uuid, uuidstr);
		FUNC4(c_name, "(", sizeof(c_name));
		FUNC4(c_name, uuidstr, sizeof(c_name));
		FUNC4(c_name, ")", sizeof(c_name));
		if (0 != FUNC0(c_name, FUNC6(c_name) + 1, sizeof(c_name))) {
			return;
		}

		FUNC5(t_name, target->p_comm, sizeof(t_name));
		FUNC7(target->p_uuid, uuidstr);
		FUNC4(t_name, "(", sizeof(t_name));
		FUNC4(t_name, uuidstr, sizeof(t_name));
		FUNC4(t_name, ")", sizeof(t_name));
		if (0 != FUNC0(t_name, FUNC6(t_name) + 1, sizeof(t_name))) {
			return;
		}
#if DEBUG
		printf("EXTMOD: %s(%d) -> %s(%d)\n",
			   c_name,
			   proc_pid(caller),
			   t_name,
			   proc_pid(target));
#endif

		FUNC1(LOG_DEBUG, "messagetracer",
							5,
							"com.apple.message.domain", "com.apple.kernel.external_modification", /* 0 */
							"com.apple.message.signature", c_name, /* 1 */
							"com.apple.message.signature2", t_name, /* 2 */
							"com.apple.message.result", "noop", /* 3 */
							"com.apple.message.summarize", "YES", /* 4 */
							NULL);
	}
}