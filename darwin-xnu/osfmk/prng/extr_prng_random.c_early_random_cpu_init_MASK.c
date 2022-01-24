#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct ccdrbg_state {int dummy; } ;
typedef  int /*<<< orphan*/  nonce ;
typedef  int /*<<< orphan*/  cpu ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct TYPE_3__ {int /*<<< orphan*/  seed; TYPE_2__ drbg_info; struct ccdrbg_state** drbg_states; } ;

/* Variables and functions */
 int CCDRBG_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,struct ccdrbg_state*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int*) ; 
 TYPE_1__ erandom ; 
 struct ccdrbg_state* FUNC3 (int /*<<< orphan*/ ) ; 
 int master_cpu ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void
FUNC6(int cpu)
{
	uint64_t nonce;
	int rc;
	struct ccdrbg_state * state;

	/*
	 * Allocate state and initialize DBRG state for early_random()
	 * for this processor.
	 */
	FUNC0(cpu != master_cpu);
	FUNC0(erandom.drbg_states[cpu] == NULL);

	state = FUNC3(erandom.drbg_info.size);
	if (state == NULL) {
		FUNC5("prng_init kalloc failed\n");
	}
	erandom.drbg_states[cpu] = state;

	/*
	 * Init our DBRG from boot entropy, nonce as timestamp
	 * and use the cpu number as the personalization parameter.
	 */
	nonce = FUNC4();
	rc    = FUNC2(&erandom.drbg_info, state, sizeof(erandom.seed), erandom.seed, sizeof(nonce), &nonce, sizeof(cpu), &cpu);
	FUNC1(sizeof(nonce), &nonce);
	if (rc != CCDRBG_STATUS_OK)
		FUNC5("ccdrbg_init() returned %d", rc);
}