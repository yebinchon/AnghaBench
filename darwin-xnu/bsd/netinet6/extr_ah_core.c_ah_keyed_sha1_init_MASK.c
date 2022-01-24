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
typedef  int u_int8_t ;
typedef  int u_int ;
struct secasvar {int /*<<< orphan*/  key_auth; } ;
struct ah_algorithm_state {struct secasvar* sav; void* foo; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SHA1_CTX ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(struct ah_algorithm_state *state, struct secasvar *sav)
{
	SHA1_CTX *ctxt;
	size_t padlen;
	size_t keybitlen;
	u_int8_t buf[32] __attribute__((aligned(4)));

	if (!state)
		FUNC6("ah_keyed_sha1_init: what?");

	state->sav = sav;
	state->foo = (void *)FUNC4(sizeof(SHA1_CTX), M_TEMP, M_NOWAIT);
	if (!state->foo)
		return ENOBUFS;

	ctxt = (SHA1_CTX *)state->foo;
	FUNC0(ctxt);

	if (state->sav) {
		FUNC1(ctxt, (u_int8_t *)FUNC2(state->sav->key_auth),
			(u_int)FUNC3(state->sav->key_auth));

		/*
		 * Pad after the key.
		 */
		if (FUNC3(state->sav->key_auth) < 56)
			padlen = 64 - 8 - FUNC3(state->sav->key_auth);
		else
			padlen = 64 + 64 - 8 - FUNC3(state->sav->key_auth);
		keybitlen = FUNC3(state->sav->key_auth);
		keybitlen *= 8;

		buf[0] = 0x80;
		FUNC1(ctxt, &buf[0], 1);
		padlen--;

		FUNC5(buf, sizeof(buf));
		while (sizeof(buf) < padlen) {
			FUNC1(ctxt, &buf[0], sizeof(buf));
			padlen -= sizeof(buf);
		}
		if (padlen) {
			FUNC1(ctxt, &buf[0], padlen);
		}

		buf[0] = (keybitlen >> 0) & 0xff;
		buf[1] = (keybitlen >> 8) & 0xff;
		buf[2] = (keybitlen >> 16) & 0xff;
		buf[3] = (keybitlen >> 24) & 0xff;
		FUNC1(ctxt, buf, 8);
	}

	return 0;
}