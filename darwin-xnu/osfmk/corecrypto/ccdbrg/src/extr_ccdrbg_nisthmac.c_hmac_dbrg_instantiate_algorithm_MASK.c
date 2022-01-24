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
struct ccdrbg_state {int dummy; } ;
struct ccdrbg_nisthmac_state {int reseed_counter; int /*<<< orphan*/  vsize; int /*<<< orphan*/  vptr; int /*<<< orphan*/  key; int /*<<< orphan*/  keysize; } ;

/* Variables and functions */
 int CCDRBG_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccdrbg_state*,size_t,void const*,size_t,void const*,size_t,void const*) ; 

__attribute__((used)) static int FUNC3(struct ccdrbg_state *drbg,
                                           size_t entropyLength, const void *entropy,
                                           size_t nonceLength, const void *nonce,
                                           size_t psLength, const void *ps)
{
    // TODO: The NIST code passes nonce (i.e. HMAC key) to generate, but cc interface isn't set up that way
    struct ccdrbg_nisthmac_state *state = (struct ccdrbg_nisthmac_state *)drbg;

    // 1. seed_material = entropy_input || nonce || personalization_string.

    // 2. Set Key to outlen bits of zeros.
    FUNC1(state->keysize, state->key);

    // 3. Set V to outlen/8 bytes of 0x01.
    FUNC0(state->vptr, 0x01, state->vsize);

    // 4. (Key, V) = HMAC_DRBG_Update (seed_material, Key, V).
    FUNC2(drbg, entropyLength, entropy, nonceLength, nonce, psLength, ps);

    // 5. reseed_counter = 1.
    state->reseed_counter = 1;

    return CCDRBG_STATUS_OK;
}