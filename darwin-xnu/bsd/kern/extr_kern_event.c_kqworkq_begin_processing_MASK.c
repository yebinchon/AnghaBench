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
struct kqworkq {int dummy; } ;
struct kqrequest {int /*<<< orphan*/  kqr_state; int /*<<< orphan*/  kqr_thread; int /*<<< orphan*/  kqr_qos_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSD_KEVENT_KQWQ_PROCESS_BEGIN ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KQWQAE_BEGIN_PROCESSING ; 
 int FUNC2 (struct kqworkq*,struct kqrequest*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct kqworkq *kqwq, struct kqrequest *kqr,
		int kevent_flags)
{
	int rc = 0;

	FUNC0(FUNC1(BSD_KEVENT_KQWQ_PROCESS_BEGIN) | DBG_FUNC_START,
			0, kqr->kqr_qos_index);

	rc = FUNC2(kqwq, kqr, kevent_flags,
			KQWQAE_BEGIN_PROCESSING);

	FUNC0(FUNC1(BSD_KEVENT_KQWQ_PROCESS_BEGIN) | DBG_FUNC_END,
			FUNC3(kqr->kqr_thread), kqr->kqr_state);

	return rc;
}