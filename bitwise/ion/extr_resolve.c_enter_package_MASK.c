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
typedef  int /*<<< orphan*/  Package ;

/* Variables and functions */
 int /*<<< orphan*/ * current_package ; 

Package *FUNC0(Package *new_package) {
    Package *old_package = current_package;
    current_package = new_package;
    return old_package;
}