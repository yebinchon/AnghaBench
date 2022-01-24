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
typedef  scalar_t__ mbuf_t ;

/* Variables and functions */
 unsigned char* FUNC0 (scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 size_t FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char,char*) ; 

void
FUNC5(mbuf_t m, size_t offset, size_t len)
{
	mbuf_t			n;
	size_t			i, j;
	size_t			pktlen, mlen, maxlen;
	unsigned char	*ptr;

	pktlen = FUNC3(m);

	if (offset > pktlen)
		return;

	maxlen = (pktlen - offset > len) ? len : pktlen - offset;
	n = m;
	mlen = FUNC1(n);
	ptr = FUNC0(n);
	for (i = 0, j = 0; i < maxlen; i++, j++) {
		if (j >= mlen) {
			n = FUNC2(n);
			if (n == 0)
				break;
			ptr = FUNC0(n);
			mlen = FUNC1(n);
			j = 0;
		}
		if (i >= offset) {
			FUNC4("%02x%s", ptr[j], i % 2 ? " " : "");
		}
	}
}