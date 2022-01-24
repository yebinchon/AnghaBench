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
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int MAX_FDS ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC2(const char *fds_name, const fd_set *fds)
{
    if (fds_name && fds) {
        FUNC0(TAG, "FDs in %s =", fds_name);
        for (int i = 0; i < MAX_FDS; ++i) {
            if (FUNC1(i, fds)) {
                FUNC0(TAG, "%d", i);
            }
        }
    }
}