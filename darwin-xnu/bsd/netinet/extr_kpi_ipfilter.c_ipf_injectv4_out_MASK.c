#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct route {int ipoa_boundif; int /*<<< orphan*/  ipoa_flags; int /*<<< orphan*/  ipoa_netsvctype; int /*<<< orphan*/  ipoa_sotc; } ;
struct mbuf {scalar_t__ m_len; } ;
struct m_tag {int dummy; } ;
struct ip_out_args {int ipoa_boundif; int /*<<< orphan*/  ipoa_flags; int /*<<< orphan*/  ipoa_netsvctype; int /*<<< orphan*/  ipoa_sotc; } ;
struct ip_moptions {int /*<<< orphan*/  imo_multicast_loop; int /*<<< orphan*/  imo_multicast_ttl; int /*<<< orphan*/  imo_multicast_ifp; } ;
struct ip {int /*<<< orphan*/  ip_off; int /*<<< orphan*/  ip_len; } ;
typedef  scalar_t__ mbuf_t ;
typedef  int /*<<< orphan*/  ipoa ;
typedef  scalar_t__ ipfilter_t ;
typedef  TYPE_1__* ipf_pktopts_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_3__ {int ippo_flags; int /*<<< orphan*/  ippo_mcast_loop; int /*<<< orphan*/  ippo_mcast_ttl; int /*<<< orphan*/  ippo_mcast_ifnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int IFSCOPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct ip_moptions*) ; 
 int /*<<< orphan*/  IPOAF_BOUND_IF ; 
 int /*<<< orphan*/  IPOAF_BOUND_SRCADDR ; 
 int /*<<< orphan*/  IPOAF_NO_CELLULAR ; 
 int /*<<< orphan*/  IPOAF_NO_EXPENSIVE ; 
 int /*<<< orphan*/  IPOAF_SELECT_SRCIF ; 
 int IPPOF_BOUND_IF ; 
 int IPPOF_BOUND_SRCADDR ; 
 int IPPOF_MCAST_OPTS ; 
 int IPPOF_NO_IFF_EXPENSIVE ; 
 int IPPOF_NO_IFT_CELLULAR ; 
 int IPPOF_SELECT_SRCIF ; 
 int IPPOF_SHIFT_IFSCOPE ; 
 int IP_ALLOWBROADCAST ; 
 int IP_OUTARGS ; 
 int IP_RAWOUTPUT ; 
 int /*<<< orphan*/  KERNEL_MODULE_TAG_ID ; 
 int /*<<< orphan*/  KERNEL_TAG_TYPE_IPFILT ; 
 int /*<<< orphan*/  M_DONTWAIT ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct route*) ; 
 int /*<<< orphan*/  SO_TC_UNSPEC ; 
 int /*<<< orphan*/  _NET_SERVICE_TYPE_UNSPEC ; 
 int /*<<< orphan*/  FUNC3 (struct route*,int) ; 
 struct ip_moptions* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ *,struct route*,int,struct ip_moptions*,struct route*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 scalar_t__ FUNC7 (struct mbuf*) ; 
 struct mbuf* FUNC8 (struct mbuf*,int) ; 
 struct m_tag* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct mbuf*,struct m_tag*) ; 

__attribute__((used)) static errno_t
FUNC11(mbuf_t data, ipfilter_t filter_ref, ipf_pktopts_t options)
{
	struct route ro;
	struct ip *ip;
	struct mbuf *m = (struct mbuf *)data;
	errno_t error = 0;
	struct m_tag *mtag = NULL;
	struct ip_moptions *imo = NULL;
	struct ip_out_args ipoa;

	FUNC3(&ipoa, sizeof(ipoa));
	ipoa.ipoa_boundif = IFSCOPE_NONE;
	ipoa.ipoa_sotc = SO_TC_UNSPEC;
	ipoa.ipoa_netsvctype = _NET_SERVICE_TYPE_UNSPEC;

	/* Make the IP header contiguous in the mbuf */
	if ((size_t)m->m_len < sizeof (struct ip)) {
		m = FUNC8(m, sizeof (struct ip));
		if (m == NULL)
			return (ENOMEM);
	}
	ip = (struct ip *)FUNC7(m);

	if (filter_ref != 0) {
		mtag = FUNC9(KERNEL_MODULE_TAG_ID,
		    KERNEL_TAG_TYPE_IPFILT, sizeof (ipfilter_t), M_NOWAIT, m);
		if (mtag == NULL) {
			FUNC6(m);
			return (ENOMEM);
		}
		*(ipfilter_t *)(mtag + 1) = filter_ref;
		FUNC10(m, mtag);
	}

	if (options != NULL && (options->ippo_flags & IPPOF_MCAST_OPTS) &&
	    (imo = FUNC4(M_DONTWAIT)) != NULL) {
		imo->imo_multicast_ifp = options->ippo_mcast_ifnet;
		imo->imo_multicast_ttl = options->ippo_mcast_ttl;
		imo->imo_multicast_loop = options->ippo_mcast_loop;
	}

	if (options != NULL) {
		if (options->ippo_flags & IPPOF_SELECT_SRCIF)
			ipoa.ipoa_flags |= IPOAF_SELECT_SRCIF;
		if (options->ippo_flags & IPPOF_BOUND_IF) {
			ipoa.ipoa_flags |= IPOAF_BOUND_IF;
			ipoa.ipoa_boundif = options->ippo_flags >>
			    IPPOF_SHIFT_IFSCOPE;
		}
		if (options->ippo_flags & IPPOF_NO_IFT_CELLULAR)
			ipoa.ipoa_flags |= IPOAF_NO_CELLULAR;
		if (options->ippo_flags & IPPOF_BOUND_SRCADDR)
			ipoa.ipoa_flags |= IPOAF_BOUND_SRCADDR;
		if (options->ippo_flags & IPPOF_NO_IFF_EXPENSIVE)
			ipoa.ipoa_flags |= IPOAF_NO_EXPENSIVE;
	}

	FUNC3(&ro, sizeof(struct route));

	/* Put ip_len and ip_off in host byte order, ip_output expects that */

#if BYTE_ORDER != BIG_ENDIAN
	NTOHS(ip->ip_len);
	NTOHS(ip->ip_off);
#endif

	/* Send; enforce source interface selection via IP_OUTARGS flag */
	error = FUNC5(m, NULL, &ro,
	    IP_ALLOWBROADCAST | IP_RAWOUTPUT | IP_OUTARGS, imo, &ipoa);

	/* Release the route */
	FUNC2(&ro);

	if (imo != NULL)
		FUNC0(imo);

	return (error);
}