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
typedef  int uint32_t ;

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 int STACKSHOT_GET_GLOBAL_MEM_STATS ; 
 int STACKSHOT_KCDATA_FORMAT ; 
 int STACKSHOT_SAVE_IMP_DONATION_PIDS ; 
 int STACKSHOT_SAVE_LOADINFO ; 
 int /*<<< orphan*/  FUNC0 (void*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int FUNC3 (void*) ; 
 void* FUNC4 () ; 
 int FUNC5 (void*) ; 
 int FUNC6 (void*,int) ; 

__attribute__((used)) static void
FUNC7(void)
{
	uint32_t stackshot_flags = (STACKSHOT_SAVE_LOADINFO | STACKSHOT_GET_GLOBAL_MEM_STATS |
				STACKSHOT_SAVE_IMP_DONATION_PIDS | STACKSHOT_KCDATA_FORMAT);

	void *config = FUNC4();
	T_QUIET; FUNC0(config, "created stackshot config");

	int ret = FUNC6(config, stackshot_flags);
	T_QUIET; FUNC1(ret, "set flags on stackshot config");

	int retries_remaining = 5;

retry:
	ret = FUNC3(config);

	if (ret == EBUSY || ret == ETIMEDOUT) {
		if (retries_remaining > 0) {
			retries_remaining--;
			goto retry;
		} else {
			T_QUIET; FUNC1(ret,
					"called stackshot_capture_with_config (no retries remaining)");
		}
	} else {
		 T_QUIET; FUNC1(ret, "called stackshot_capture_with_config");
	}

	ret = FUNC5(config);
	T_QUIET; FUNC2(ret, "deallocated stackshot config");
}