#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; int m_flags; TYPE_1__ m_pkthdr; scalar_t__ m_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int FUNC1 (struct mbuf*) ; 
 int M_PKTHDR ; 
 struct mbuf* FUNC2 (struct mbuf*,int,int) ; 

struct mbuf *
FUNC3(struct mbuf *m, int len, int how, int align)
{
	if (FUNC1(m) >= len &&
	    (!align || FUNC0((m->m_data - len), sizeof(u_int32_t)))) {
		m->m_data -= len;
		m->m_len += len;
	} else {
		m = FUNC2(m, len, how);
	}
	if ((m) && (m->m_flags & M_PKTHDR))
		m->m_pkthdr.len += len;
	return (m);
}