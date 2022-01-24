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
 int KN_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (struct kqtailq*,struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kn_tqe ; 
 struct kqueue* FUNC1 (struct knote*) ; 
 struct kqtailq* FUNC2 (struct knote*) ; 
 int /*<<< orphan*/  FUNC3 (struct kqueue*) ; 

__attribute__((used)) static void
FUNC4(struct knote *kn)
{
	struct kqueue *kq = FUNC1(kn);
	struct kqtailq *queue;

	FUNC3(kq);

	if ((kn->kn_status & KN_QUEUED) == 0)
		return;

	queue = FUNC2(kn);
	FUNC0(queue, kn, kn_tqe);
	kn->kn_status &= ~KN_QUEUED;
	kq->kq_count--;
}