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
struct mbuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mbuf*,int,int,int*) ; 

int
FUNC1(struct mbuf *m, int off, int proto, int *nxtp)
{
	int newoff;
	int nxt;

	if (!nxtp) {
		nxt = -1;
		nxtp = &nxt;
	}
	while (1) {
		newoff = FUNC0(m, off, proto, nxtp);
		if (newoff < 0)
			return (off);
		else if (newoff < off)
			return (-1);	/* invalid */
		else if (newoff == off)
			return (newoff);

		off = newoff;
		proto = *nxtp;
	}
}