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
typedef  int u_char ;
struct secasvar {int /*<<< orphan*/  key_auth; } ;
struct ah_algorithm_state {struct secasvar* sav; void* foo; } ;
typedef  int /*<<< orphan*/  SHA1_CTX ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int SHA1_RESULTLEN ; 
 int* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(struct ah_algorithm_state *state, struct secasvar *sav)
{
	u_char *ipad;
	u_char *opad;
	SHA1_CTX *ctxt;
	u_char tk[SHA1_RESULTLEN] __attribute__((aligned(4)));	/* SHA-1 generates 160 bits */
	u_char *key;
	size_t keylen;
	size_t i;

	if (!state)
		FUNC8("ah_hmac_sha1_init: what?");

	state->sav = sav;
	state->foo = (void *)FUNC5(64 + 64 + sizeof(SHA1_CTX),
			M_TEMP, M_NOWAIT);
	if (!state->foo)
		return ENOBUFS;

	ipad = (u_char *)state->foo;
	opad = (u_char *)(ipad + 64);
	ctxt = (SHA1_CTX *)(void *)(opad + 64);

	/* compress the key if necessery */
	if (64 < FUNC4(state->sav->key_auth)) {
		FUNC1(ctxt);
		FUNC2(ctxt, FUNC3(state->sav->key_auth),
			FUNC4(state->sav->key_auth));
		FUNC0(&tk[0], ctxt);
		key = &tk[0];
		keylen = SHA1_RESULTLEN;
	} else {
		key = (u_char *) FUNC3(state->sav->key_auth);
		keylen = FUNC4(state->sav->key_auth);
	}

	FUNC7(ipad, 64);
	FUNC7(opad, 64);
	FUNC6(key, ipad, keylen);
	FUNC6(key, opad, keylen);
	for (i = 0; i < 64; i++) {
		ipad[i] ^= 0x36;
		opad[i] ^= 0x5c;
	}

	FUNC1(ctxt);
	FUNC2(ctxt, ipad, 64);

	return 0;
}