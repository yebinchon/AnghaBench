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
struct TYPE_3__ {struct mbuf* iff_pending_tx_packet; int /*<<< orphan*/ * iff_peer; scalar_t__ iff_start_busy; int /*<<< orphan*/  iff_flags; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct mbuf**) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(ifnet_t ifp)
{
	struct mbuf *	copy_m = NULL;
	if_fake_ref	fakeif;
	iff_flags_t	flags = 0;
	ifnet_t	peer = NULL;
	struct mbuf *	m;
	struct mbuf *	save_m;

	FUNC2();
	fakeif = FUNC6(ifp);
	if (fakeif->iff_start_busy) {
		FUNC4();
		FUNC8("if_fake: start is busy\n");
		return;
	}
	if (fakeif != NULL) {
		peer = fakeif->iff_peer;
		flags = fakeif->iff_flags;
	}

	/* check for pending TX */
	m = fakeif->iff_pending_tx_packet;
	if (m != NULL) {
		if (peer != NULL) {
			copy_m = FUNC1(m);
			if (copy_m == NULL) {
				FUNC4();
				return;
			}
		}
		fakeif->iff_pending_tx_packet = NULL;
		FUNC7(m);
		m = NULL;
	}
	fakeif->iff_start_busy = TRUE;
	FUNC4();
	save_m = NULL;
	for (;;) {
		if (copy_m != NULL) {
			FUNC0(peer != NULL);
			FUNC3(ifp, copy_m, peer, flags);
			copy_m = NULL;
		}
		if (FUNC5(ifp, &m) != 0) {
			break;
		}
		if (peer == NULL) {
			FUNC7(m);
		} else {
			copy_m = FUNC1(m);
			if (copy_m == NULL) {
				save_m = m;
				break;
			}
			FUNC7(m);
		}
	}
	peer = NULL;
	FUNC2();
	fakeif = FUNC6(ifp);
	if (fakeif != NULL) {
		fakeif->iff_start_busy = FALSE;
		if (save_m != NULL && fakeif->iff_peer != NULL) {
			/* save it for next time */
			fakeif->iff_pending_tx_packet = save_m;
			save_m = NULL;
		}
	}
	FUNC4();
	if (save_m != NULL) {
		/* didn't save packet, so free it */
		FUNC7(save_m);
	}
}