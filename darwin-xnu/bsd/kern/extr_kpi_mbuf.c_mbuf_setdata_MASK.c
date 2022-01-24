#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mbuf_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_5__ {size_t m_len; void* m_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (TYPE_1__*) ; 

errno_t
FUNC2(mbuf_t mbuf, void *data, size_t len)
{
	size_t	start = (size_t)((char *)FUNC0(mbuf));
	size_t	maxlen = FUNC1(mbuf);

	if ((size_t)data < start || ((size_t)data) + len > start + maxlen)
		return (EINVAL);
	mbuf->m_data = data;
	mbuf->m_len = len;

	return (0);
}