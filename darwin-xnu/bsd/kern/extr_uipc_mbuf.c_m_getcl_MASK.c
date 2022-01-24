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
typedef  int /*<<< orphan*/  u_int16_t ;
struct TYPE_2__ {void* ext_buf; } ;
struct mbuf {scalar_t__ m_type; scalar_t__ m_flags; TYPE_1__ m_ext; } ;
struct ext_ref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,void*,struct ext_ref*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int,int) ; 
 scalar_t__ FUNC3 (struct mbuf*) ; 
 int MCR_NOSLEEP ; 
 int MCR_TRYHARD ; 
 int /*<<< orphan*/  MC_MBUF_CL ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int FUNC5 (int) ; 
 scalar_t__ MT_FREE ; 
 scalar_t__ M_EXT ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 int /*<<< orphan*/ * FUNC9 (struct mbuf*) ; 
 struct ext_ref* FUNC10 (struct mbuf*) ; 
 scalar_t__ FUNC11 (struct mbuf*,int) ; 
 struct mbuf* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

struct mbuf *
FUNC15(int wait, int type, int flags)
{
	struct mbuf *m;
	int mcflags = FUNC5(wait);
	int hdr = (flags & M_PKTHDR);

	/* Is this due to a non-blocking retry?  If so, then try harder */
	if (mcflags & MCR_NOSLEEP)
		mcflags |= MCR_TRYHARD;

	m = FUNC12(FUNC7(MC_MBUF_CL), mcflags);
	if (m != NULL) {
		u_int16_t flag;
		struct ext_ref *rfa;
		void *cl;

		FUNC6(m->m_type == MT_FREE && m->m_flags == M_EXT);
		cl = m->m_ext.ext_buf;
		rfa = FUNC10(m);

		FUNC0(cl != NULL && rfa != NULL);
		FUNC6(FUNC3(m) && FUNC9(m) == NULL);

		flag = FUNC4(m);

		FUNC2(m, hdr, type);
		FUNC1(m, cl, rfa, 1, flag);

		FUNC14(type);
		FUNC13(MT_FREE);
#if CONFIG_MACF_NET
		if (hdr && mac_init_mbuf(m, wait) != 0) {
			m_freem(m);
			return (NULL);
		}
#endif /* MAC_NET */
	}
	return (m);
}