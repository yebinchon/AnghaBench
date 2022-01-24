#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sadb_address {scalar_t__ sadb_address_proto; scalar_t__ sadb_address_prefixlen; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {int sa_family; scalar_t__ sa_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  out_invaddr; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 TYPE_2__* FUNC0 (struct sadb_address*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ pfkeystat ; 

__attribute__((used)) static int
FUNC3(struct sadb_address *src0,
						  struct sadb_address *dst0)
{
	u_int plen = 0;

	/* check upper layer protocol */
	if (src0->sadb_address_proto != dst0->sadb_address_proto) {
		FUNC2((LOG_DEBUG, "key_parse: upper layer protocol mismatched.\n"));
		FUNC1(pfkeystat.out_invaddr);
		return (EINVAL);
	}

	/* check family */
	if (FUNC0(src0)->sa_family !=
		FUNC0(dst0)->sa_family) {
		FUNC2((LOG_DEBUG, "key_parse: address family mismatched.\n"));
		FUNC1(pfkeystat.out_invaddr);
		return (EINVAL);
	}
	if (FUNC0(src0)->sa_len !=
		FUNC0(dst0)->sa_len) {
		FUNC2((LOG_DEBUG,
				  "key_parse: address struct size mismatched.\n"));
		FUNC1(pfkeystat.out_invaddr);
		return (EINVAL);
	}

	switch (FUNC0(src0)->sa_family) {
		case AF_INET:
			if (FUNC0(src0)->sa_len != sizeof(struct sockaddr_in)) {
				FUNC1(pfkeystat.out_invaddr);
				return (EINVAL);
			}
			break;
		case AF_INET6:
			if (FUNC0(src0)->sa_len != sizeof(struct sockaddr_in6)) {
				FUNC1(pfkeystat.out_invaddr);
				return (EINVAL);
			}
			break;
		default:
			FUNC2((LOG_DEBUG,
					  "key_parse: unsupported address family.\n"));
			FUNC1(pfkeystat.out_invaddr);
			return (EAFNOSUPPORT);
	}

	switch (FUNC0(src0)->sa_family) {
		case AF_INET:
			plen = sizeof(struct in_addr) << 3;
			break;
		case AF_INET6:
			plen = sizeof(struct in6_addr) << 3;
			break;
		default:
			plen = 0;	/*fool gcc*/
			break;
	}

	/* check max prefix length */
	if (src0->sadb_address_prefixlen > plen ||
		dst0->sadb_address_prefixlen > plen) {
		FUNC2((LOG_DEBUG,
				  "key_parse: illegal prefixlen.\n"));
		FUNC1(pfkeystat.out_invaddr);
		return (EINVAL);
	}

	/*
	 * prefixlen == 0 is valid because there can be a case when
	 * all addresses are matched.
	 */
	return (0);
}