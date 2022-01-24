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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void)
{
    FUNC0("Usage: iconify [-h] [-f [-a] [-n]]\n");
    FUNC0("Options:\n");
    FUNC0("  -a create windows for all monitors\n");
    FUNC0("  -f create full screen window(s)\n");
    FUNC0("  -h show this help\n");
    FUNC0("  -n no automatic iconification of full screen windows\n");
}