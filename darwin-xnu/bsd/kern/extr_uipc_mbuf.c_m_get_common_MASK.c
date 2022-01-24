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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int,short) ; 
 int MCR_NOSLEEP ; 
 int MCR_TRYHARD ; 
 int /*<<< orphan*/  MC_MBUF ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  MT_FREE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 scalar_t__ FUNC4 (struct mbuf*,int) ; 
 struct mbuf* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (short) ; 

__attribute__((used)) static inline struct mbuf *
FUNC8(int wait, short type, int hdr)
{
	struct mbuf *m;
	int mcflags = FUNC1(wait);

	/* Is this due to a non-blocking retry?  If so, then try harder */
	if (mcflags & MCR_NOSLEEP)
		mcflags |= MCR_TRYHARD;

	m = FUNC5(FUNC2(MC_MBUF), mcflags);
	if (m != NULL) {
		FUNC0(m, hdr, type);
		FUNC7(type);
		FUNC6(MT_FREE);
#if CONFIG_MACF_NET
		if (hdr && mac_init_mbuf(m, wait) != 0) {
			m_free(m);
			return (NULL);
		}
#endif /* MAC_NET */
	}
	return (m);
}