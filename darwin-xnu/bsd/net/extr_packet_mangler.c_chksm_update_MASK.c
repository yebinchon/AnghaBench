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
typedef  void* u_int16_t ;
struct tcphdr {void* th_sum; } ;
struct ip {int ip_v; int ip_hl; int ip_p; int /*<<< orphan*/  ip_len; void* ip_sum; } ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
#define  IPPROTO_ICMP 131 
#define  IPPROTO_ICMPV6 130 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int const,int,int,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(mbuf_t data)
{
	u_int16_t ip_sum;
	u_int16_t tsum;
	struct tcphdr *tcp;
	errno_t err;

	unsigned char *ptr = (unsigned char *)FUNC1(data);
	struct ip *ip = (struct ip *)(void *)ptr;
	if (ip->ip_v != 4) {
		return;
	}

	ip->ip_sum = 0;
	err = FUNC2(data, 0, 0, ip->ip_hl << 2, &ip_sum); // ip sum
	if (err == 0)
		ip->ip_sum = ip_sum;
	switch (ip->ip_p) {
		case IPPROTO_TCP:
			tcp = (struct tcphdr *)(void *)(ptr + (ip->ip_hl << 2));
			tcp->th_sum = 0;
			err = FUNC2(data, IPPROTO_TCP, ip->ip_hl << 2,
			    FUNC3(ip->ip_len) - (ip->ip_hl << 2), &tsum);
			if (err == 0)
				tcp->th_sum = tsum;
			break;
		case IPPROTO_UDP:
			/* Don't handle UDP */
			break;
		case IPPROTO_ICMP:
			break;
		case IPPROTO_ICMPV6:
			break;
		default:
			break;
	}

	FUNC0(data);
	return;
}