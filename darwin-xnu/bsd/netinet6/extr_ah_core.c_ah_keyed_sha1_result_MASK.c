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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct ah_algorithm_state {scalar_t__ foo; TYPE_1__* sav; } ;
typedef  int /*<<< orphan*/  digest ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  key_auth; } ;
typedef  int /*<<< orphan*/  SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SHA1_RESULTLEN ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(struct ah_algorithm_state *state, caddr_t addr, size_t l)
{
	u_char digest[SHA1_RESULTLEN] __attribute__((aligned(4)));	/* SHA-1 generates 160 bits */
	SHA1_CTX *ctxt;

	if (!state || !state->foo)
		FUNC6("ah_keyed_sha1_result: what?");
	ctxt = (SHA1_CTX *)state->foo;

	if (state->sav) {
		FUNC2(ctxt, (u_int8_t *)FUNC3(state->sav->key_auth),
			(u_int)FUNC4(state->sav->key_auth));
	}
	FUNC1((caddr_t)&digest[0], ctxt);
	FUNC5(&digest[0], (void *)addr, sizeof(digest) > l ? l : sizeof(digest));

	FUNC0(state->foo, M_TEMP);
}