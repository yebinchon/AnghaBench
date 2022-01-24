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
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/ * ifnet_t ;
typedef  int /*<<< orphan*/  iff_flags_t ;
typedef  TYPE_1__* if_fake_ref ;
struct TYPE_3__ {int /*<<< orphan*/  iff_flags; int /*<<< orphan*/ * iff_peer; } ;

/* Variables and functions */
 struct mbuf* FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC7(ifnet_t ifp, struct mbuf * m)
{
	struct mbuf *		copy_m;
	if_fake_ref		fakeif;
	iff_flags_t		flags;
	ifnet_t		peer = NULL;

	if (m == NULL) {
		return (0);
	}
	copy_m = FUNC0(m);
	FUNC6(m);
	m = NULL;
	if (copy_m == NULL) {
		/* count this as an output error */
		FUNC5(ifp, 0, 0, 1);
		return (0);
	}
	FUNC1();
	fakeif = FUNC4(ifp);
	if (fakeif != NULL) {
		peer = fakeif->iff_peer;
		flags = fakeif->iff_flags;
	}
	FUNC3();
	if (peer == NULL) {
		FUNC6(copy_m);
		FUNC5(ifp, 0, 0, 1);
		return (0);
	}
	FUNC2(ifp, copy_m, peer, flags);
	return (0);
}