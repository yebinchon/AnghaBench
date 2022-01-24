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
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  nfs_buf_delwri_thread ; 
 int /*<<< orphan*/  nfs_buf_mutex ; 
 int /*<<< orphan*/  nfsbufdelwri ; 
 scalar_t__ nfsbufdelwrithd ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 

void
FUNC7(int locked)
{
	if (FUNC0(&nfsbufdelwri))
		return;
	if (!locked)
		FUNC2(nfs_buf_mutex);
	/* wake up the delayed write service thread */
	if (nfsbufdelwrithd)
		FUNC6(&nfsbufdelwrithd);
	else if (FUNC1(nfs_buf_delwri_thread, NULL, &nfsbufdelwrithd) == KERN_SUCCESS)
		FUNC5(nfsbufdelwrithd);
	/* otherwise, try to do some of the work ourselves */
	if (!nfsbufdelwrithd)
		FUNC4();
	if (!locked)
		FUNC3(nfs_buf_mutex);
}