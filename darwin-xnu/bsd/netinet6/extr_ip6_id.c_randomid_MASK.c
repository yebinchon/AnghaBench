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
typedef  int u_int64_t ;
typedef  int u_int32_t ;
typedef  scalar_t__ time_t ;
struct randomtab {scalar_t__ ru_counter; scalar_t__ ru_max; scalar_t__ ru_reseed; int ru_x; int ru_b; int ru_m; int ru_seed; int ru_seed2; int ru_msb; int /*<<< orphan*/  ru_n; int /*<<< orphan*/  ru_g; scalar_t__ ru_a; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct randomtab*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC4(struct randomtab *p)
{
	time_t curtime = (time_t)FUNC2();
	int i, n;
	u_int32_t tmp;

	if (p->ru_counter >= p->ru_max || curtime > p->ru_reseed)
		FUNC1(p);

	tmp = FUNC0();

	/* Skip a random number of ids */
	n = tmp & 0x3; tmp = tmp >> 2;
	if (p->ru_counter + n >= p->ru_max)
		FUNC1(p);

	for (i = 0; i <= n; i++) {
		/* Linear Congruential Generator */
		p->ru_x = ((u_int64_t)p->ru_a * p->ru_x + p->ru_b) % p->ru_m;
	}

	p->ru_counter += i;

	return ((p->ru_seed ^ FUNC3(p->ru_g, p->ru_seed2 ^ p->ru_x, p->ru_n)) |
	    p->ru_msb);
}