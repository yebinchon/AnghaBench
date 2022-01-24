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
typedef  int /*<<< orphan*/  my_csflags ;

/* Variables and functions */
 int /*<<< orphan*/  CS_OPS_CLEARPLATFORM ; 
 int /*<<< orphan*/  CS_OPS_STATUS ; 
 int CS_PLATFORM_BINARY ; 
#define  ENOTSUP 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(void){
	int ret;
	uint32_t my_csflags;

	T_QUIET; FUNC0(FUNC2(FUNC3(), CS_OPS_STATUS, &my_csflags, sizeof(my_csflags)), NULL);

	if (!(my_csflags & CS_PLATFORM_BINARY)) {
		return 0;
	}

	ret = FUNC2(FUNC3(), CS_OPS_CLEARPLATFORM, NULL, 0);
	if (ret) {
		switch (errno) {
		case ENOTSUP:
			FUNC1("clearing platform binary not supported, skipping test");
			return -1;
		default:
			FUNC1("csops failed with flag CS_OPS_CLEARPLATFORM");
			return -1;
		}
	}

	my_csflags = 0;
	T_QUIET; FUNC0(FUNC2(FUNC3(), CS_OPS_STATUS, &my_csflags, sizeof(my_csflags)), NULL);

	if (my_csflags & CS_PLATFORM_BINARY) {
		FUNC1("platform binary flag still set");
		return -1;
	}

	return 0;
}