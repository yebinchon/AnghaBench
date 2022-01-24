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
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int IO_NODELOCKED ; 
 int IO_UNIT ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(caddr_t buffer, size_t size, vnode_t vp, vfs_context_t ctx, off_t file_offset)
{
	return FUNC2(UIO_WRITE, vp, buffer, size, file_offset, UIO_SYSSPACE, IO_NODELOCKED|IO_UNIT,
			FUNC1(ctx), (int *) 0, FUNC0(ctx));
}