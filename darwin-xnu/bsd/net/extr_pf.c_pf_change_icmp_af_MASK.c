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
struct pf_pdesc {int off; int tot_len; int /*<<< orphan*/  ttl; int /*<<< orphan*/  proto; } ;
struct pf_addr {int /*<<< orphan*/  v6addr; int /*<<< orphan*/  v4addr; } ;
struct ip6_hdr {int ip_hl; int /*<<< orphan*/  ip6_dst; int /*<<< orphan*/  ip6_src; int /*<<< orphan*/  ip6_hlim; int /*<<< orphan*/  ip6_nxt; void* ip6_plen; int /*<<< orphan*/  ip6_vfc; int /*<<< orphan*/  ip_sum; int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  ip_src; int /*<<< orphan*/  ip_p; int /*<<< orphan*/  ip_ttl; void* ip_off; void* ip_id; void* ip_len; int /*<<< orphan*/  ip_v; } ;
struct ip {int ip_hl; int /*<<< orphan*/  ip6_dst; int /*<<< orphan*/  ip6_src; int /*<<< orphan*/  ip6_hlim; int /*<<< orphan*/  ip6_nxt; void* ip6_plen; int /*<<< orphan*/  ip6_vfc; int /*<<< orphan*/  ip_sum; int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  ip_src; int /*<<< orphan*/  ip_p; int /*<<< orphan*/  ip_ttl; void* ip_off; void* ip_id; void* ip_len; int /*<<< orphan*/  ip_v; } ;
typedef  scalar_t__ sa_family_t ;
typedef  int /*<<< orphan*/  pbuf_t ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  IPPROTO_ICMP ; 
 int /*<<< orphan*/  IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  IPV6_DEFHLIM ; 
 int /*<<< orphan*/  IPV6_VERSION ; 
 int /*<<< orphan*/  IPVERSION ; 
 int /*<<< orphan*/  IP_DF ; 
 int /*<<< orphan*/  FUNC0 (struct ip6_hdr*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  rfc6864 ; 

__attribute__((used)) static int
FUNC5(pbuf_t *pbuf, int off,
	struct pf_pdesc *pd, struct pf_pdesc *pd2, struct pf_addr *src,
	struct pf_addr *dst, sa_family_t af, sa_family_t naf)
{
	struct ip		*ip4 = NULL;
	struct ip6_hdr		*ip6 = NULL;
	void			*hdr;
	int			 hlen, olen;

	if (af == naf || (af != AF_INET && af != AF_INET6) ||
	    (naf != AF_INET && naf != AF_INET6))
		return (-1);

	/* old header */
	olen = pd2->off - off;
	/* new header */
	hlen = naf == AF_INET ? sizeof(*ip4) : sizeof(*ip6);

	/* Modify the pbuf to accommodate the new header */
	hdr = FUNC4(pbuf, off, olen, hlen);
	if (hdr == NULL)
		return (-1);

	/* translate inner ip/ip6 header */
	switch (naf) {
	case AF_INET:
		ip4 = hdr;
		FUNC0(ip4, sizeof(*ip4));
		ip4->ip_v   = IPVERSION;
		ip4->ip_hl  = sizeof(*ip4) >> 2;
		ip4->ip_len = FUNC1(sizeof(*ip4) + pd2->tot_len - olen);
		ip4->ip_id  = rfc6864 ? 0 : FUNC1(FUNC2());
		ip4->ip_off = FUNC1(IP_DF);
		ip4->ip_ttl = pd2->ttl;
		if (pd2->proto == IPPROTO_ICMPV6)
			ip4->ip_p = IPPROTO_ICMP;
		else
			ip4->ip_p = pd2->proto;
		ip4->ip_src = src->v4addr;
		ip4->ip_dst = dst->v4addr;
		ip4->ip_sum = FUNC3(pbuf, 0, 0, ip4->ip_hl << 2);
		break;
	case AF_INET6:
		ip6 = hdr;
		FUNC0(ip6, sizeof(*ip6));
		ip6->ip6_vfc  = IPV6_VERSION;
		ip6->ip6_plen = FUNC1(pd2->tot_len - olen);
		if (pd2->proto == IPPROTO_ICMP)
			ip6->ip6_nxt = IPPROTO_ICMPV6;
		else
			ip6->ip6_nxt = pd2->proto;
		if (!pd2->ttl || pd2->ttl > IPV6_DEFHLIM)
			ip6->ip6_hlim = IPV6_DEFHLIM;
		else
			ip6->ip6_hlim = pd2->ttl;
		ip6->ip6_src  = src->v6addr;
		ip6->ip6_dst  = dst->v6addr;
		break;
	}

	/* adjust payload offset and total packet length */
	pd2->off += hlen - olen;
	pd->tot_len += hlen - olen;

	return (0);
}