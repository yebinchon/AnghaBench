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
struct kern_direct_file_io_ref_t {int /*<<< orphan*/  ctx; int /*<<< orphan*/  vp; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int IO_NODELOCKED ; 
 int IO_SYNC ; 
 int IO_UNIT ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct kern_direct_file_io_ref_t * ref, off_t offset, void * addr, size_t len, int ioflag)
{
    return (FUNC2(UIO_READ, ref->vp,
			addr, len, offset,
			UIO_SYSSPACE, ioflag|IO_SYNC|IO_NODELOCKED|IO_UNIT, 
                        FUNC1(ref->ctx), (int *) 0,
			FUNC0(ref->ctx)));
}