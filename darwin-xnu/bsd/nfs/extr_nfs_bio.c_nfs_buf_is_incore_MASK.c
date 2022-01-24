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
typedef  int /*<<< orphan*/  nfsnode_t ;
typedef  int /*<<< orphan*/  daddr64_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_buf_mutex ; 

boolean_t
FUNC3(nfsnode_t np, daddr64_t blkno)
{
	boolean_t rv;
	FUNC0(nfs_buf_mutex);
	if (FUNC2(np, blkno))
		rv = TRUE;
	else
		rv = FALSE;
	FUNC1(nfs_buf_mutex);
	return (rv);
}