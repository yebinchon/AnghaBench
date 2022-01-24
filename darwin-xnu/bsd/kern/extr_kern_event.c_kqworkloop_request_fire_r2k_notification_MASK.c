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
struct kqrequest {int kqr_state; int /*<<< orphan*/  kqr_thread; } ;
struct kqworkloop {struct kqrequest kqwl_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  AST_KEVENT_RETURN_TO_KERNEL ; 
 int KQR_R2K_NOTIF_ARMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kqworkloop*) ; 

__attribute__((used)) static inline void
FUNC3(struct kqworkloop *kqwl)
{
	struct kqrequest *kqr = &kqwl->kqwl_request;

	FUNC2(kqwl);

	if (kqr->kqr_state & KQR_R2K_NOTIF_ARMED) {
		FUNC1(kqr->kqr_thread);
		kqr->kqr_state &= ~KQR_R2K_NOTIF_ARMED;
		FUNC0(kqr->kqr_thread, AST_KEVENT_RETURN_TO_KERNEL);
	}
}