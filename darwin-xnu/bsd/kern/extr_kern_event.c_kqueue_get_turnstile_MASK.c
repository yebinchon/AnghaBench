#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct turnstile {int dummy; } ;
struct TYPE_10__ {TYPE_5__* kqwl; TYPE_1__* kq; } ;
typedef  TYPE_3__ kqueue_t ;
struct TYPE_9__ {int kqr_state; } ;
struct TYPE_11__ {int /*<<< orphan*/  kqwl_p; TYPE_2__ kqwl_request; struct turnstile* kqwl_turnstile; } ;
struct TYPE_8__ {int kq_state; } ;

/* Variables and functions */
 int KQR_ALLOCATED_TURNSTILE ; 
 int KQ_WORKLOOP ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  TURNSTILE_WORKLOOPS ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int FUNC3 (int*,int /*<<< orphan*/ ) ; 
 struct turnstile* FUNC4 (struct turnstile**,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relaxed ; 
 int /*<<< orphan*/  release ; 
 struct turnstile* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct turnstile*) ; 
 struct turnstile* FUNC8 (uintptr_t,struct turnstile**,struct turnstile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct turnstile *
FUNC11(kqueue_t kqu, bool can_alloc)
{
	uint8_t kqr_state;

	if ((kqu.kq->kq_state & KQ_WORKLOOP) == 0) {
		return TURNSTILE_NULL;
	}

	kqr_state = FUNC3(&kqu.kqwl->kqwl_request.kqr_state, relaxed);
	if (kqr_state & KQR_ALLOCATED_TURNSTILE) {
		/* force a dependency to pair with the atomic or with release below */
		return FUNC4(&kqu.kqwl->kqwl_turnstile,
				kqr_state);
	}

	if (!can_alloc) {
		return TURNSTILE_NULL;
	}

	struct turnstile *ts = FUNC6(), *free_ts = TURNSTILE_NULL;

	FUNC1(kqu);
	if (FUNC0(kqu.kqwl)) {
		FUNC9(kqu.kqwl->kqwl_p);
	}

	if (kqu.kqwl->kqwl_request.kqr_state & KQR_ALLOCATED_TURNSTILE) {
		free_ts = ts;
		ts = kqu.kqwl->kqwl_turnstile;
	} else {
		ts = FUNC8((uintptr_t)kqu.kqwl, &kqu.kqwl->kqwl_turnstile,
				ts, TURNSTILE_WORKLOOPS);

		/* release-barrier to pair with the unlocked load of kqwl_turnstile above */
		FUNC5(&kqu.kqwl->kqwl_request.kqr_state,
				KQR_ALLOCATED_TURNSTILE, release);
	}

	if (FUNC0(kqu.kqwl)) {
		FUNC10(kqu.kqwl->kqwl_p);
	}
	FUNC2(kqu.kqwl);

	if (free_ts) {
		FUNC7(free_ts);
	}
	return ts;
}