#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbuf_type_t ;
typedef  TYPE_1__* mbuf_t ;
typedef  int /*<<< orphan*/  mbuf_how_t ;
typedef  scalar_t__ errno_t ;
struct TYPE_11__ {int m_flags; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ ENOTSUP ; 
 size_t M16KCLBYTES ; 
 size_t MBIGCLBYTES ; 
 size_t MCLBYTES ; 
 int M_EXT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ njcl ; 

errno_t
FUNC5(mbuf_how_t how, mbuf_type_t type, size_t size, mbuf_t *mbuf)
{
	/* Must set *mbuf to NULL in failure case */
	errno_t	error = 0;
	int	created = 0;

	if (mbuf == NULL)
		return (EINVAL);
	if (*mbuf == NULL) {
		*mbuf = FUNC0(how, type);
		if (*mbuf == NULL)
			return (ENOMEM);
		created = 1;
	}
	/*
	 * At the time this code was written, m_{mclget,mbigget,m16kget}
	 * would always return the same value that was passed in to it.
	 */
	if (size == MCLBYTES) {
		*mbuf = FUNC3(*mbuf, how);
	} else if (size == MBIGCLBYTES) {
		*mbuf = FUNC2(*mbuf, how);
	} else if (size == M16KCLBYTES) {
		if (njcl > 0) {
			*mbuf = FUNC1(*mbuf, how);
		} else {
			/* Jumbo cluster pool not available? */
			error = ENOTSUP;
			goto out;
		}
	} else {
		error = EINVAL;
		goto out;
	}
	if (*mbuf == NULL || ((*mbuf)->m_flags & M_EXT) == 0)
		error = ENOMEM;
out:
	if (created && error != 0) {
		FUNC4(*mbuf);
		*mbuf = NULL;
	}
	return (error);
}