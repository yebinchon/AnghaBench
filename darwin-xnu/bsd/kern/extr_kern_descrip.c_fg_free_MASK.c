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
struct fileglob {int /*<<< orphan*/  fg_lock; int /*<<< orphan*/  fg_cred; int /*<<< orphan*/ * fg_vn_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fileglob*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_FILEGLOB ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  file_lck_grp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fileglob*) ; 
 int /*<<< orphan*/  nfiles ; 

void
FUNC7(struct fileglob *fg)
{
	FUNC2(-1, &nfiles);

	if (fg->fg_vn_data) {
		FUNC3(fg->fg_vn_data);
		fg->fg_vn_data = NULL;
	}

	if (FUNC1(fg->fg_cred)) {
		FUNC4(&fg->fg_cred);
	}
	FUNC5(&fg->fg_lock, file_lck_grp);

#if CONFIG_MACF
	mac_file_label_destroy(fg);
#endif
	FUNC0(fg, sizeof *fg, M_FILEGLOB);
}