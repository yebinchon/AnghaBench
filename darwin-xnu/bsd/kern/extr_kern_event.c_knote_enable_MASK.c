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
struct kqueue {int kq_state; } ;
struct knote {int kn_status; } ;

/* Variables and functions */
 int KN_DISABLED ; 
 int KN_SUPPRESSED ; 
 int KQ_PROCESSING ; 
 scalar_t__ FUNC0 (struct knote*) ; 
 struct kqueue* FUNC1 (struct knote*) ; 
 int /*<<< orphan*/  FUNC2 (struct knote*) ; 
 int /*<<< orphan*/  FUNC3 (struct knote*) ; 

__attribute__((used)) static void
FUNC4(struct knote *kn)
{
	if ((kn->kn_status & KN_DISABLED) == 0)
		return;

	kn->kn_status &= ~KN_DISABLED;

	if (kn->kn_status & KN_SUPPRESSED) {
		/*
		 * it is possible for userland to have knotes registered for a given
		 * workloop `wl_orig` but really handled on another workloop `wl_new`.
		 *
		 * In that case, rearming will happen from the servicer thread of
		 * `wl_new` which if `wl_orig` is no longer being serviced, would cause
		 * this knote to stay suppressed forever if we only relied on
		 * kqworkloop_acknowledge_events to be called by `wl_orig`.
		 *
		 * However if we see the KQ_PROCESSING bit on `wl_orig` set, we can't
		 * unsuppress because that would mess with the processing phase of
		 * `wl_orig`, however it also means kqworkloop_acknowledge_events()
		 * will be called.
		 */
		struct kqueue *kq = FUNC1(kn);
		if ((kq->kq_state & KQ_PROCESSING) == 0) {
			FUNC2(kn);
		}
	} else if (FUNC0(kn)) {
		FUNC3(kn);
	}
}