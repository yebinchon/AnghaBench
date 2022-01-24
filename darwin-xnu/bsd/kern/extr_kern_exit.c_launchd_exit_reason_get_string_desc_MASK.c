#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* os_reason_t ;
typedef  int /*<<< orphan*/  kcdata_iter_t ;
struct TYPE_4__ {scalar_t__ osr_bufsize; int /*<<< orphan*/ * osr_kcd_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_REASON_USER_DESC ; 
 scalar_t__ KCDATA_BUFFER_BEGIN_OS_REASON ; 
 TYPE_1__* OS_REASON_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

char *
FUNC6(os_reason_t exit_reason)
{
	kcdata_iter_t iter;

	if (exit_reason == OS_REASON_NULL || exit_reason->osr_kcd_buf == NULL ||
			exit_reason->osr_bufsize == 0) {
		return NULL;
	}

	iter = FUNC0(exit_reason->osr_kcd_buf, exit_reason->osr_bufsize);
	if (!FUNC4(iter)) {
#if DEBUG || DEVELOPMENT
		printf("launchd exit reason has invalid exit reason buffer\n");
#endif
		return NULL;
	}

	if (FUNC3(iter) != KCDATA_BUFFER_BEGIN_OS_REASON) {
#if DEBUG || DEVELOPMENT
		printf("launchd exit reason buffer type mismatch, expected %d got %d\n",
			KCDATA_BUFFER_BEGIN_OS_REASON, kcdata_iter_type(iter));
#endif
		return NULL;
	}

	iter = FUNC1(iter, EXIT_REASON_USER_DESC);
	if (!FUNC4(iter)) {
		return NULL;
	}

	return (char *)FUNC2(iter);
}