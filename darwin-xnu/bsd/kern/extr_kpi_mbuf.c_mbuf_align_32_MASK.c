#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  TYPE_1__* mbuf_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_6__ {int m_flags; size_t m_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUP ; 
 int M_EXT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (TYPE_1__*) ; 

errno_t
FUNC3(mbuf_t mbuf, size_t len)
{
	if ((mbuf->m_flags & M_EXT) != 0 && FUNC0(mbuf))
		return (ENOTSUP);
	mbuf->m_data = FUNC1(mbuf);
	mbuf->m_data +=
	    ((FUNC2(mbuf) - len) &~ (sizeof(u_int32_t) - 1));

	return (0);
}