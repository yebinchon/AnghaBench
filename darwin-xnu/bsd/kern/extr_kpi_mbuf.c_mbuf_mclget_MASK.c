#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbuf_type_t ;
typedef  TYPE_1__* mbuf_t ;
typedef  int /*<<< orphan*/  mbuf_how_t ;
typedef  scalar_t__ errno_t ;
struct TYPE_7__ {int m_flags; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENOMEM ; 
 int M_EXT ; 
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 

errno_t
FUNC3(mbuf_how_t how, mbuf_type_t type, mbuf_t *mbuf)
{
	/* Must set *mbuf to NULL in failure case */
	errno_t	error = 0;
	int		created = 0;
	if (mbuf == NULL)
		return (EINVAL);
	if (*mbuf == NULL) {
		error = FUNC2(how, type, mbuf);
		if (error)
			return (error);
		created = 1;
	}

	/*
	 * At the time this code was written, m_mclget would always
	 * return the same value that was passed in to it.
	 */
	*mbuf = FUNC0(*mbuf, how);

	if (created && ((*mbuf)->m_flags & M_EXT) == 0) {
		FUNC1(*mbuf);
		*mbuf = NULL;
	}
	if (*mbuf == NULL || ((*mbuf)->m_flags & M_EXT) == 0)
		error = ENOMEM;
	return (error);
}