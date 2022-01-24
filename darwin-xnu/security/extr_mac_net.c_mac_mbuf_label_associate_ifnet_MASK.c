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
struct ifnet {int /*<<< orphan*/  if_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ ,struct mbuf*,struct label*) ; 
 struct label* FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  mbuf_label_associate_ifnet ; 

void
FUNC2(struct ifnet *ifp, struct mbuf *mbuf)
{
	struct label *m_label;

	/* ifp must be locked */

	m_label = FUNC1(mbuf);

	FUNC0(mbuf_label_associate_ifnet, ifp, ifp->if_label, mbuf,
	    m_label);
}