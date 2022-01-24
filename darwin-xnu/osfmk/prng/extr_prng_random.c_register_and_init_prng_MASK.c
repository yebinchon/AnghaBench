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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/ * prng_fns_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int /*<<< orphan*/  attrs; int /*<<< orphan*/  group; int /*<<< orphan*/  mutex; int /*<<< orphan*/  group_attrs; } ;
struct TYPE_4__ {int /*<<< orphan*/  ctx; TYPE_1__ lock; } ;

/* Variables and functions */
 int ENTROPY_BUFFER_BYTE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 () ; 
 size_t FUNC3 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ master_cpu ; 
 int nsources ; 
 TYPE_2__ prng ; 
 int /*<<< orphan*/ * prng_fns ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ **) ; 

void
FUNC9(prng_fns_t fns)
{
	uint8_t buf[nsources][ENTROPY_BUFFER_BYTE_SIZE];
	size_t nbytes;

	FUNC0(FUNC2() == master_cpu);
	FUNC0(prng_fns == NULL);

	prng_fns = fns;

	/* make a mutex to control access */
	prng.lock.group_attrs = FUNC6();
	prng.lock.group       = FUNC5("random", prng.lock.group_attrs);
	prng.lock.attrs       = FUNC4();
	prng.lock.mutex       = FUNC7(prng.lock.group, prng.lock.attrs);

	nbytes = FUNC3(buf, ENTROPY_BUFFER_BYTE_SIZE);
	(void)FUNC8(&prng.ctx, nbytes, buf);
	FUNC1(sizeof(buf), buf);
}