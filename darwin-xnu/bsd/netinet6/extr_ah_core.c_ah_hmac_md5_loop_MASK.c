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
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(struct ah_algorithm_state *state, caddr_t addr, size_t len)
{
	MD5_CTX *ctxt;

	if (!state || !state->foo)
		FUNC1("ah_hmac_md5_loop: what?");
	ctxt = (MD5_CTX *)(void *)(((caddr_t)state->foo) + 128);
	FUNC0(ctxt, addr, len);
}