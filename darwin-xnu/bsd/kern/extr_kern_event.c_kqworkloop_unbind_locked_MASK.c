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
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  thread_qos_t ;
struct uthread {int /*<<< orphan*/  uu_kqueue_override; struct kqrequest* uu_kqr_bound; } ;
struct kqrequest {int kqr_state; int /*<<< orphan*/ * kqr_thread; } ;
struct kqworkloop {scalar_t__ kqwl_turnstile; int /*<<< orphan*/ * kqwl_owner; int /*<<< orphan*/  kqwl_dynamicid; struct kqrequest kqwl_request; } ;
typedef  int /*<<< orphan*/  kq_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  BSD_KEVENT_KQWL_UNBIND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int KQR_R2K_NOTIF_ARMED ; 
 int KQR_THREQUESTED ; 
 int /*<<< orphan*/  THREAD_QOS_UNSPECIFIED ; 
 int /*<<< orphan*/  TURNSTILE_IMMEDIATE_UPDATE ; 
 int /*<<< orphan*/  TURNSTILE_INHERITOR_NULL ; 
 int /*<<< orphan*/  TURNSTILE_INTERLOCK_HELD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct uthread* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kqworkloop*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static thread_qos_t
FUNC8(struct kqworkloop *kqwl, thread_t thread)
{
	struct uthread *ut = FUNC3(thread);
	struct kqrequest *kqr = &kqwl->kqwl_request;
	kq_index_t ipc_override = ut->uu_kqueue_override;

	FUNC0(FUNC1(BSD_KEVENT_KQWL_UNBIND), kqwl->kqwl_dynamicid,
			FUNC5(thread), 0, 0);

	FUNC4(kqwl);
	FUNC2(ut->uu_kqr_bound == kqr);
	ut->uu_kqr_bound = NULL;
	ut->uu_kqueue_override = THREAD_QOS_UNSPECIFIED;

	if (kqwl->kqwl_owner == NULL && kqwl->kqwl_turnstile) {
		FUNC6(kqwl->kqwl_turnstile,
				TURNSTILE_INHERITOR_NULL, TURNSTILE_IMMEDIATE_UPDATE);
		FUNC7(kqwl->kqwl_turnstile,
				TURNSTILE_INTERLOCK_HELD);
	}

	kqr->kqr_thread = NULL;
	kqr->kqr_state &= ~(KQR_THREQUESTED | KQR_R2K_NOTIF_ARMED);
	return ipc_override;
}