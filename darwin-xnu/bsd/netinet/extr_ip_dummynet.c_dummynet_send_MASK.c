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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  tmp_rt ;
struct route {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct dn_pkt_tag {int dn_dir; int dn_flags; } ;

/* Variables and functions */
#define  DN_TO_IP6_IN 131 
#define  DN_TO_IP6_OUT 130 
#define  DN_TO_IP_IN 129 
#define  DN_TO_IP_OUT 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IPV6_FORWARDING ; 
 int IP_FORWARDING ; 
 int IP_RAWOUTPUT ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  FUNC1 (struct route*) ; 
 scalar_t__ FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct route*,int) ; 
 struct dn_pkt_tag* FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int /*<<< orphan*/ *,struct route*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct mbuf*) ; 

__attribute__((used)) static void
FUNC10(struct mbuf *m)
{
	struct dn_pkt_tag *pkt;
	struct mbuf *n;

	for (; m != NULL; m = n) {
		n = m->m_nextpkt;
		m->m_nextpkt = NULL;
		pkt = FUNC4(m);

		FUNC0(("dummynet_send m: 0x%llx dn_dir: %d dn_flags: 0x%x\n",
		    (uint64_t)FUNC2(m), pkt->dn_dir,
		    pkt->dn_flags));

	switch (pkt->dn_dir) {
		case DN_TO_IP_OUT: {
			struct route tmp_rt;

			/* route is already in the packet's dn_ro */
			FUNC3(&tmp_rt, sizeof (tmp_rt));

			/* Force IP_RAWOUTPUT as the IP header is fully formed */
			pkt->dn_flags |= IP_RAWOUTPUT | IP_FORWARDING;
			(void)FUNC6(m, NULL, &tmp_rt, pkt->dn_flags, NULL, NULL);
			FUNC1(&tmp_rt);
			break ;
		}
		case DN_TO_IP_IN :
			FUNC9(PF_INET, m);
			break ;
#ifdef INET6
		case DN_TO_IP6_OUT: {
			/* routes already in the packet's dn_{ro6,pmtu} */
			ip6_output(m, NULL, NULL, IPV6_FORWARDING, NULL, NULL, NULL);
			break;
		}
		case DN_TO_IP6_IN:
			proto_inject(PF_INET6, m);
			break;
#endif /* INET6 */
		default:
			FUNC8("dummynet: bad switch %d!\n", pkt->dn_dir);
			FUNC7(m);
			break ;
	}
	}
}