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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct lltable {int /*<<< orphan*/  llt_af; } ;
struct llentry {int dummy; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int IFF_NOARP ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct llentry*) ; 
 int /*<<< orphan*/  LLE_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC5 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct llentry*) ; 
 struct llentry* FUNC7 (struct lltable*,int /*<<< orphan*/ ,struct sockaddr*) ; 
 struct llentry* FUNC8 (struct lltable*,int /*<<< orphan*/ ,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC9 (struct lltable*,struct llentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct lltable*,struct llentry*) ; 

struct llentry *
FUNC11(struct ifnet *ifp, struct lltable *lt,
    struct sockaddr_storage *dst)
{
	struct llentry *la, *la_tmp;

	FUNC0(ifp, lt->llt_af);
	la = FUNC7(lt, LLE_EXCLUSIVE, (struct sockaddr *)dst);
	FUNC1(ifp, lt->llt_af);

	if (la != NULL) {
		FUNC4(la);
		FUNC6(la);
		return (la);
	}

	if ((ifp->if_flags & IFF_NOARP) == 0) {
		la = FUNC8(lt, 0, (struct sockaddr *)dst);
		if (la == NULL)
			return (NULL);
		FUNC2(ifp, lt->llt_af);
		FUNC5(la);
		/* Prefer any existing LLE over newly-created one */
		la_tmp = FUNC7(lt, LLE_EXCLUSIVE, (struct sockaddr *)dst);
		if (la_tmp == NULL)
			FUNC10(lt, la);
		FUNC3(ifp, lt->llt_af);
		if (la_tmp != NULL) {
			FUNC9(lt, la);
			la = la_tmp;
		}
		FUNC4(la);
		FUNC6(la);
	}

	return (la);
}