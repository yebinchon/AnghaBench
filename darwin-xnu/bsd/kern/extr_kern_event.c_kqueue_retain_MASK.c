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
typedef  scalar_t__ uint32_t ;
struct kqworkloop {int /*<<< orphan*/  kqwl_retains; } ;
struct kqueue {int kq_state; } ;

/* Variables and functions */
 int KQ_DYNAMIC ; 
 scalar_t__ KQ_WORKLOOP_RETAINS_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct kqueue*) ; 

__attribute__((used)) static inline void
FUNC2(struct kqueue *kq)
{
	struct kqworkloop *kqwl = (struct kqworkloop *)kq;
	uint32_t previous;

	if ((kq->kq_state & KQ_DYNAMIC) == 0)
		return;

	previous = FUNC0(&kqwl->kqwl_retains);
	if (previous == KQ_WORKLOOP_RETAINS_MAX)
		FUNC1("kq(%p) retain overflow", kq);

	if (previous == 0)
		FUNC1("kq(%p) resurrection", kq);
}