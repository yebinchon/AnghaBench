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
struct proc {int dummy; } ;
struct kqueue {int kq_state; } ;
struct fileproc {int dummy; } ;
typedef  scalar_t__ kqueue_id_t ;

/* Variables and functions */
 int KQ_WORKQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,struct kqueue*) ; 

__attribute__((used)) static void
FUNC3(
	struct proc *p,
	kqueue_id_t id,
	struct fileproc *fp,
	struct kqueue *kq)
{
	FUNC2(p, kq);
	if (fp != NULL) {
		FUNC0((kq->kq_state & KQ_WORKQ) == 0);
		FUNC1(p, (int)id, fp, 0);
	}
}