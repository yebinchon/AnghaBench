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
struct pf_state_key {int /*<<< orphan*/  states; int /*<<< orphan*/  refcnt; } ;
struct pf_state {struct pf_state_key* state_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pf_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pf_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC2(struct pf_state_key *sk, struct pf_state *s, int tail)
{
	s->state_key = sk;
	sk->refcnt++;

	/* list is sorted, if-bound states before floating */
	if (tail)
		FUNC1(&sk->states, s, next);
	else
		FUNC0(&sk->states, s, next);
}