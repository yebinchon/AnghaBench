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
 int /*<<< orphan*/  file_lck_attr ; 
 int /*<<< orphan*/  file_lck_grp ; 
 int /*<<< orphan*/  file_lck_grp_attr ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uipc_lock ; 

void
FUNC4(void)
{
	/* allocate file lock group attribute and group */
	file_lck_grp_attr= FUNC2();

	file_lck_grp = FUNC1("file",  file_lck_grp_attr);

	/* Allocate file lock attribute */
	file_lck_attr = FUNC0();

	uipc_lock = FUNC3(file_lck_grp, file_lck_attr);
}