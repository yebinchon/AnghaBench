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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct mbuf {struct mbuf* m_next; int /*<<< orphan*/  m_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct mbuf * m, void *dst_arg, size_t len)
{
	u_int count;
	u_char *dst;

	dst = dst_arg;
	while (len > 0) {
		if (m == 0)
			FUNC3("bpf_mcopy");
		count = FUNC2(m->m_len, len);
		FUNC0(FUNC1(m), dst, count);
		m = m->m_next;
		dst += count;
		len -= count;
	}
}