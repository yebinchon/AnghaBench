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
struct readlinkat_args {int /*<<< orphan*/  bufsize; int /*<<< orphan*/  buf; int /*<<< orphan*/  path; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int UIO_USERSPACE32 ; 
 int UIO_USERSPACE64 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int
FUNC3(proc_t p, struct readlinkat_args *uap, int32_t *retval)
{
	enum uio_seg procseg;

	procseg = FUNC0(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
	return (FUNC1(FUNC2(), uap->fd, uap->path,
	    procseg, uap->buf, uap->bufsize, procseg, retval));
}