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
struct ah_algorithm_state {scalar_t__ foo; } ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(struct ah_algorithm_state *state, caddr_t addr, size_t len)
{
	if (!state)
		FUNC1("ah_keyed_md5_loop: what?");

	FUNC0((MD5_CTX *)state->foo, addr, len);
}