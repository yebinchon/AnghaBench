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
typedef  int /*<<< orphan*/ * uuid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_wakeuuid ; 
 int /*<<< orphan*/  use_test_wakeuuid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(uuid_t wakeuuid)
{
	if (FUNC0(use_test_wakeuuid)) {
		if (!FUNC2(test_wakeuuid)) {
			if (wakeuuid != NULL) {
				FUNC1(wakeuuid, test_wakeuuid);
			}
			return (true);
		} else {
			return (false);
		}
	} else {
		return (false);
	}
}