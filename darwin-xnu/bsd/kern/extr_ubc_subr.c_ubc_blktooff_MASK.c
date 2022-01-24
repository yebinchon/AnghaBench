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
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  daddr64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

off_t
FUNC2(vnode_t vp, daddr64_t blkno)
{
	off_t file_offset = -1;
	int error;

	if (FUNC0(vp)) {
		error = FUNC1(vp, blkno, &file_offset);
		if (error)
			file_offset = -1;
	}

	return (file_offset);
}