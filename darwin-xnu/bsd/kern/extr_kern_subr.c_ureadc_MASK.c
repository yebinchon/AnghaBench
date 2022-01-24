#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
struct TYPE_6__ {TYPE_2__* kiovp; TYPE_1__* uiovp; } ;
struct uio {scalar_t__ uio_iovcnt; TYPE_3__ uio_iovs; scalar_t__ uio_segflg; } ;
struct TYPE_5__ {int /*<<< orphan*/  iov_base; } ;
struct TYPE_4__ {int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EFAULT ; 
#define  UIO_SYSSPACE 135 
#define  UIO_SYSSPACE32 134 
#define  UIO_USERISPACE 133 
#define  UIO_USERISPACE32 132 
#define  UIO_USERISPACE64 131 
#define  UIO_USERSPACE 130 
#define  UIO_USERSPACE32 129 
#define  UIO_USERSPACE64 128 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct uio*) ; 
 scalar_t__ FUNC4 (struct uio*) ; 
 int /*<<< orphan*/  FUNC5 (struct uio*,int) ; 

int
FUNC6(int c, struct uio *uio)
{
	if (FUNC4(uio) <= 0)
		FUNC1("ureadc: non-positive resid");
	FUNC5(uio, 0);
	if (uio->uio_iovcnt == 0)
		FUNC1("ureadc: non-positive iovcnt");
	if (FUNC3(uio) <= 0)
		FUNC1("ureadc: non-positive iovlen");

	switch ((int) uio->uio_segflg) {

	case UIO_USERSPACE32:
	case UIO_USERSPACE:
	case UIO_USERISPACE32:
	case UIO_USERISPACE:
	case UIO_USERSPACE64:
	case UIO_USERISPACE64:
		if (FUNC2((user_addr_t)uio->uio_iovs.uiovp->iov_base, c) < 0)
			return (EFAULT);
		break;

	case UIO_SYSSPACE32:
	case UIO_SYSSPACE:
		*(FUNC0(caddr_t, uio->uio_iovs.kiovp->iov_base)) = c;
		break;

	default:
		break;
	}
	FUNC5(uio, 1);
	return (0);
}