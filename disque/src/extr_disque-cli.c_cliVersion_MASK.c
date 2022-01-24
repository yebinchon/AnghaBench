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
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 int /*<<< orphan*/  DISQUE_VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static sds FUNC6(void) {
    sds version;
    version = FUNC3(FUNC4(), "%s", DISQUE_VERSION);

    /* Add git commit and working tree status when available */
    if (FUNC5(FUNC1(),NULL,16)) {
        version = FUNC3(version, " (git:%s", FUNC1());
        if (FUNC5(FUNC0(),NULL,10))
            version = FUNC3(version, "-dirty");
        version = FUNC2(version, ")");
    }
    return version;
}