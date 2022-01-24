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
struct readlink_args {int /*<<< orphan*/  count; int /*<<< orphan*/  buf; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int UIO_USERSPACE32 ; 
 int UIO_USERSPACE64 ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(proc_t p, struct readlink_args *uap, int32_t *retval)
{
	enum uio_seg procseg;

	procseg = FUNC1(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
	return (FUNC2(FUNC3(), AT_FDCWD,
	    FUNC0(uap->path), procseg, FUNC0(uap->buf),
	    uap->count, procseg, retval));
}