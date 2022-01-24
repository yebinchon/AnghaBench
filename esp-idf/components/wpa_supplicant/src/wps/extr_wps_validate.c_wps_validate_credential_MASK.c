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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC2(const u8 *cred[], size_t len[], size_t num,
				   int mandatory)
{
	size_t i;

	if (num == 0) {
		if (mandatory) {
			FUNC0(MSG_INFO, "WPS-STRICT: Credential "
				   "attribute missing");
			return -1;
		}
		return 0;
	}

	for (i = 0; i < num; i++) {
		if (FUNC1(cred[i], len[i]) < 0)
			return -1;
	}

	return 0;
}