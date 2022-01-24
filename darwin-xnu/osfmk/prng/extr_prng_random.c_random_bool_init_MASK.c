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
struct bool_gen {unsigned int* seed; int /*<<< orphan*/  lock; scalar_t__ state; } ;

/* Variables and functions */
 int RANDOM_BOOL_GEN_SEED_COUNT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(struct bool_gen * bg)
{
	/* Seed the random boolean generator */
	for (int i = 0; i < RANDOM_BOOL_GEN_SEED_COUNT; i++) {
		bg->seed[i] = (unsigned int)FUNC0();
	}
	bg->state = 0;
	FUNC1(&bg->lock, 0);
}