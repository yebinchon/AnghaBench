#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int csum_data; int csum_flags; int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ether_header {int dummy; } ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  int iff_flags_t ;

/* Variables and functions */
 int CSUM_DATA_VALID ; 
 int CSUM_IP_CHECKED ; 
 int CSUM_IP_VALID ; 
 int CSUM_PSEUDO_HDR ; 
 int /*<<< orphan*/  DLT_EN10MB ; 
 int ETHER_HDR_LEN ; 
 int IFF_FLAGS_HWCSUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct mbuf*) ; 
 scalar_t__ FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC10(ifnet_t ifp, struct mbuf * m, ifnet_t peer,
		   iff_flags_t flags)
{
	void *		frame_header;

	frame_header = FUNC4(m);
	if ((flags & IFF_FLAGS_HWCSUM) != 0) {
		m->m_pkthdr.csum_data = 0xffff;
		m->m_pkthdr.csum_flags =
			CSUM_DATA_VALID | CSUM_PSEUDO_HDR |
			CSUM_IP_CHECKED | CSUM_IP_VALID;
	}

	(void)FUNC3(ifp, 1, m->m_pkthdr.len, 0);
	FUNC1(ifp, DLT_EN10MB, m, NULL, 0);

	(void)FUNC8(m, peer);
	FUNC7(m, frame_header);
	FUNC6(m, - ETHER_HDR_LEN);
	(void)FUNC9(m, (char *)FUNC4(m) + ETHER_HDR_LEN,
			   FUNC5(m) - ETHER_HDR_LEN);
	FUNC0(peer, DLT_EN10MB, m, frame_header,
		   sizeof(struct ether_header));
	FUNC2(peer, m);
}