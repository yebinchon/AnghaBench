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
struct fd_vn_data {int /*<<< orphan*/  fv_lock; struct fd_vn_data* fv_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fd_vn_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_FD_DIRBUF ; 
 int /*<<< orphan*/  M_FD_VN_DATA ; 
 int /*<<< orphan*/  fd_vn_lck_grp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(void *fgvndata)
{
	struct fd_vn_data *fvdata = (struct fd_vn_data *)fgvndata;

	if (fvdata->fv_buf)
		FUNC0(fvdata->fv_buf, M_FD_DIRBUF);
	FUNC1(&fvdata->fv_lock, fd_vn_lck_grp);
	FUNC0(fvdata, M_FD_VN_DATA);
}