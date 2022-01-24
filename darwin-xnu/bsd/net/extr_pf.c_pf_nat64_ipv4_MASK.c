#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct udphdr {scalar_t__ uh_sum; } ;
struct TYPE_10__ {int /*<<< orphan*/  v6addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  v6addr; } ;
struct pf_pdesc {int tos; scalar_t__ proto; TYPE_2__ ndaddr; TYPE_1__ naddr; int /*<<< orphan*/  ttl; scalar_t__ tot_len; } ;
struct mbuf {int dummy; } ;
struct ip6_hdr {scalar_t__ ip6_nxt; int /*<<< orphan*/  ip6_plen; int /*<<< orphan*/  ip6_dst; int /*<<< orphan*/  ip6_src; int /*<<< orphan*/  ip6_hlim; int /*<<< orphan*/  ip6_vfc; } ;
struct icmp6_hdr {void* icmp6_cksum; } ;
struct TYPE_11__ {int /*<<< orphan*/ * pb_ifp; } ;
typedef  TYPE_3__ pbuf_t ;

/* Variables and functions */
 scalar_t__ IPPROTO_ICMPV6 ; 
 scalar_t__ IPPROTO_UDP ; 
 int PF_DROP ; 
 int PF_NAT64 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int,int) ; 
 void* FUNC5 (TYPE_3__*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 struct mbuf* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(pbuf_t *pbuf, int off, struct pf_pdesc *pd)
{
	struct ip6_hdr		*ip6;
	struct mbuf *m;

	if (pbuf->pb_ifp == NULL)
		return (PF_DROP);

	ip6 = (struct ip6_hdr *)FUNC6(pbuf, 0, off, sizeof(*ip6));
	if (ip6 == NULL)
		return (PF_DROP);

	ip6->ip6_vfc  = FUNC0((6 << 28) | (pd->tos << 20));
	ip6->ip6_plen = FUNC1(pd->tot_len - off);
	ip6->ip6_nxt  = pd->proto;
	ip6->ip6_hlim = pd->ttl;
	ip6->ip6_src = pd->naddr.v6addr;
	ip6->ip6_dst = pd->ndaddr.v6addr;

	/* recalculate icmp6 checksums */
	if (pd->proto == IPPROTO_ICMPV6) {
		struct icmp6_hdr *icmp6;
		int hlen = sizeof(*ip6);

		icmp6 = (struct icmp6_hdr *)FUNC4(pbuf, hlen,
		    sizeof(*icmp6));
		if (icmp6 == NULL)
			return (PF_DROP);

		icmp6->icmp6_cksum = 0;
		icmp6->icmp6_cksum = FUNC5(pbuf,
						 IPPROTO_ICMPV6, hlen,
						 FUNC3(ip6->ip6_plen));
	} else if (pd->proto == IPPROTO_UDP) {
		struct udphdr *uh;
		int hlen = sizeof(*ip6);

		uh = (struct udphdr *)FUNC4(pbuf, hlen,
		    sizeof(*uh));
		if (uh == NULL)
			return (PF_DROP);

		if (uh->uh_sum == 0)
			uh->uh_sum = FUNC5(pbuf, IPPROTO_UDP,
						hlen, FUNC3(ip6->ip6_plen));
	}

	if ((m = FUNC7(pbuf, TRUE)) != NULL)
		FUNC2(m);

	return (PF_NAT64);
}