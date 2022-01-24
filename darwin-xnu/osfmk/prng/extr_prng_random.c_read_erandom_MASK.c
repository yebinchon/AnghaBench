#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct ccdrbg_state {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  seed; int /*<<< orphan*/  drbg_info; struct ccdrbg_state** drbg_states; } ;

/* Variables and functions */
 int CCDRBG_STATUS_NEED_RESEED ; 
 int CCDRBG_STATUS_OK ; 
 size_t EARLY_RANDOM_SEED_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ccdrbg_state*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ccdrbg_state*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 size_t FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__ erandom ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static void
FUNC9(void * buffer, u_int numBytes)
{
	int cpu;
	int rc;
	size_t nbytes;
	struct ccdrbg_state * state;

	FUNC6();
	cpu   = FUNC4();
	state = erandom.drbg_states[cpu];
	FUNC0(state);
	for (;;) {
		/* Generate output */
		rc = FUNC2(&erandom.drbg_info, state, numBytes, buffer, 0, NULL);
		if (rc == CCDRBG_STATUS_OK)
			break;
		if (rc == CCDRBG_STATUS_NEED_RESEED) {
			/* It's time to reseed. Get more entropy */
			nbytes = FUNC5(erandom.seed, EARLY_RANDOM_SEED_SIZE);
			FUNC0(nbytes >= EARLY_RANDOM_SEED_SIZE);
			rc = FUNC3(&erandom.drbg_info, state, sizeof(erandom.seed), erandom.seed, 0, NULL);
			FUNC1(sizeof(erandom.seed), erandom.seed);
			if (rc == CCDRBG_STATUS_OK)
				continue;
			FUNC8("read_erandom reseed error %d\n", rc);
		}
		FUNC8("read_erandom ccdrbg error %d\n", rc);
	}
	FUNC7();
}