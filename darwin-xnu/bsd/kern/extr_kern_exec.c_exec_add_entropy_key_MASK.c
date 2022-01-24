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
typedef  int uint64_t ;
struct image_params {int dummy; } ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  entropy ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HEX_STR_LEN ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC1 (struct image_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int FUNC3 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(struct image_params *imgp,
		     const char *key,
		     int values,
		     boolean_t embedNUL)
{
	const int limit = 8;
	uint64_t entropy[limit];
	char str[FUNC4(key) + (HEX_STR_LEN + 1) * limit + 1];
	if (values > limit) {
		values = limit;
	}

    FUNC2(entropy, sizeof(entropy[0]) * values);

	if (embedNUL) {
		entropy[0] &= ~(0xffull << 8);
	}

	int len = FUNC3(str, sizeof(str), "%s0x%llx", key, entropy[0]);
	int remaining = sizeof(str) - len;
	for (int i = 1; i < values && remaining > 0; ++i) {
		int start = sizeof(str) - remaining;
		len = FUNC3(&str[start], remaining, ",0x%llx", entropy[i]);
		remaining -= len;
	}

	return FUNC1(imgp, FUNC0(str), UIO_SYSSPACE, FALSE);
}