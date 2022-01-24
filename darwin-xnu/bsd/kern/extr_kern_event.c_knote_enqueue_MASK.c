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
struct kqueue {int /*<<< orphan*/  kq_count; } ;
struct kqtailq {int dummy; } ;
struct knote {int kn_status; } ;

/* Variables and functions */
 int KN_ACTIVE ; 
 int KN_DISABLED ; 
 int KN_DROPPING ; 
 int KN_QUEUED ; 
 int KN_STAYACTIVE ; 
 int KN_SUPPRESSED ; 
 int /*<<< orphan*/  FUNC0 (struct kqtailq*,struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kn_tqe ; 
 struct kqueue* FUNC1 (struct knote*) ; 
 struct kqtailq* FUNC2 (struct knote*) ; 
 int /*<<< orphan*/  FUNC3 (struct kqueue*) ; 

__attribute__((used)) static int
FUNC4(struct knote *kn)
{
	if ((kn->kn_status & (KN_ACTIVE | KN_STAYACTIVE)) == 0 ||
	    (kn->kn_status & (KN_DISABLED | KN_SUPPRESSED | KN_DROPPING)))
		return 0;

	if ((kn->kn_status & KN_QUEUED) == 0) {
		struct kqtailq *queue = FUNC2(kn);
		struct kqueue *kq = FUNC1(kn);

		FUNC3(kq);
		FUNC0(queue, kn, kn_tqe);
		kn->kn_status |= KN_QUEUED;
		kq->kq_count++;
		return 1;
	}
	return ((kn->kn_status & KN_STAYACTIVE) != 0);
}