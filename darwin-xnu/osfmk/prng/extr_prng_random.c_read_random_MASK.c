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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {TYPE_1__ lock; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int CCKPRNG_NEED_ENTROPY ; 
 int CCKPRNG_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 TYPE_2__ prng ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

void
FUNC6(void * buffer, u_int numbytes)
{
	int err;

	FUNC2(prng.lock.mutex);

	/*
	 * Call PRNG, reseeding and retrying if requested.
	 */
	for (;;) {
		FUNC0(err = FUNC5(&prng.ctx, numbytes, buffer));
		if (err == CCKPRNG_OK)
			break;
		if (err == CCKPRNG_NEED_ENTROPY) {
			FUNC1();
			continue;
		}
		FUNC4("read_random() error %d\n", err);
	}

	FUNC3(prng.lock.mutex);
}