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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlan_cloner ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int
FUNC2(void)
{
    int error;

    error = FUNC0(&vlan_cloner);
    if (error != 0)
        return error;
    FUNC1();
    return 0;
}