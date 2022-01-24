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
typedef  int /*<<< orphan*/  u_char ;
struct ah_algorithm_state {scalar_t__ foo; } ;
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/ * caddr_t ;
typedef  int /*<<< orphan*/  SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int SHA1_RESULTLEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(struct ah_algorithm_state *state, caddr_t addr, size_t l)
{
	u_char digest[SHA1_RESULTLEN] __attribute__((aligned(4)));	/* SHA-1 generates 160 bits */
	u_char *ipad;
	u_char *opad;
	SHA1_CTX *ctxt;

	if (!state || !state->foo)
		FUNC5("ah_hmac_sha1_result: what?");

	ipad = (u_char *)state->foo;
	opad = (u_char *)(ipad + 64);
	ctxt = (SHA1_CTX *)(void *)(opad + 64);

	FUNC1((caddr_t)&digest[0], ctxt);

	FUNC2(ctxt);
	FUNC3(ctxt, opad, 64);
	FUNC3(ctxt, (caddr_t)&digest[0], sizeof(digest));
	FUNC1((caddr_t)&digest[0], ctxt);

	FUNC4(&digest[0], (void *)addr, sizeof(digest) > l ? l : sizeof(digest));

	FUNC0(state->foo, M_TEMP);
}