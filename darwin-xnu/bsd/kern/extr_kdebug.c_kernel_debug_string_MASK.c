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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  str_buf ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_STR_LEN ; 
 int STR_BUF_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ kdebug_enable ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 

int
FUNC9(uint32_t debugid, uint64_t *str_id, const char *str)
{
	/* arguments to tracepoints must be word-aligned */
	__attribute__((aligned(sizeof(uintptr_t)))) char str_buf[STR_BUF_SIZE];
	FUNC7(sizeof(str_buf) > MAX_STR_LEN);
	vm_size_t len_copied;
	int err;

	FUNC1(str_id);

	if (FUNC0(kdebug_enable == 0)) {
		return 0;
	}

	if (!FUNC3(debugid)) {
		return 0;
	}

	if (!FUNC4(debugid)) {
		return 0;
	}

	if ((err = FUNC2(debugid, *str_id)) != 0) {
		return err;
	}

	if (str == NULL) {
		if (str_id == 0) {
			return EINVAL;
		}

		*str_id = FUNC5(debugid, *str_id, NULL, 0);
		return 0;
	}

	FUNC6(str_buf, 0, sizeof(str_buf));
	len_copied = FUNC8(str_buf, str, MAX_STR_LEN + 1);
	*str_id = FUNC5(debugid, *str_id, str_buf,
	                                       len_copied);
	return 0;
}