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
struct sockaddr {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_multiaddrs; } ;
struct ifmultiaddr {int ifma_flags; int ifma_anoncnt; int ifma_reqcnt; int /*<<< orphan*/  ifma_addr; } ;

/* Variables and functions */
 int ENOENT ; 
 int IFMAF_ANONYMOUS ; 
 int /*<<< orphan*/  FUNC0 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifmultiaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmultiaddr*) ; 
 struct ifmultiaddr* FUNC3 (int /*<<< orphan*/ *) ; 
 struct ifmultiaddr* FUNC4 (struct ifmultiaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifma_link ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp, const struct sockaddr *sa,
    struct ifmultiaddr **retifma, int anon)
{
	struct ifmultiaddr *ifma;

	for (ifma = FUNC3(&ifp->if_multiaddrs); ifma != NULL;
	    ifma = FUNC4(ifma, ifma_link)) {
		FUNC1(ifma);
		if (!FUNC6(sa, ifma->ifma_addr)) {
			FUNC2(ifma);
			continue;
		}
		if (anon) {
			FUNC5(!(ifma->ifma_flags & IFMAF_ANONYMOUS) ||
			    ifma->ifma_anoncnt != 0);
			FUNC5((ifma->ifma_flags & IFMAF_ANONYMOUS) ||
			    ifma->ifma_anoncnt == 0);
			ifma->ifma_anoncnt++;
			if (!(ifma->ifma_flags & IFMAF_ANONYMOUS)) {
				FUNC5(ifma->ifma_anoncnt == 1);
				ifma->ifma_flags |= IFMAF_ANONYMOUS;
			}
		}
		if (!anon || ifma->ifma_anoncnt == 1) {
			ifma->ifma_reqcnt++;
			FUNC5(ifma->ifma_reqcnt > 1);
		}
		if (retifma != NULL) {
			*retifma = ifma;
			FUNC0(ifma);
		}
		FUNC2(ifma);
		return (0);
	}
	return (ENOENT);
}