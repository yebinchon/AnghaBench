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
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*,struct label*,struct mbuf*,struct label*) ; 
 struct label* FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  netinet_fragment ; 

void
FUNC2(struct mbuf *datagram, struct mbuf *fragment)
{
	struct label *datagramlabel, *fragmentlabel;

	datagramlabel = FUNC1(datagram);
	fragmentlabel = FUNC1(fragment);

	FUNC0(netinet_fragment, datagram, datagramlabel, fragment,
	    fragmentlabel);
}