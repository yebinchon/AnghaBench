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
struct ccdrbg_state {int dummy; } ;
struct ccdrbg_nisthmac_state {size_t vsize; void const* vptr; void const* nextvptr; int /*<<< orphan*/  key; int /*<<< orphan*/  keysize; scalar_t__ bytesLeft; TYPE_1__* custom; } ;
struct ccdigest_info {int /*<<< orphan*/  block_size; int /*<<< orphan*/  state_size; } ;
struct TYPE_2__ {struct ccdigest_info* di; } ;

/* Variables and functions */
 int CCDRBG_STATUS_ABORT ; 
 int CCDRBG_STATUS_ERROR ; 
 int CCDRBG_STATUS_OK ; 
 scalar_t__ FUNC0 (size_t,void const*,void const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ccdigest_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,void const*,void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ccdigest_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ccdigest_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ccdigest_info const*,int /*<<< orphan*/ ,size_t,void const*) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC7 (struct ccdrbg_state*) ; 

__attribute__((used)) static int FUNC8(struct ccdrbg_state *drbg,
                            size_t daLen, const void *da,
                            size_t dbLen, const void *db,
                            size_t dcLen, const void *dc
                            )
{
    int rc=CCDRBG_STATUS_ERROR;
    struct ccdrbg_nisthmac_state *state = (struct ccdrbg_nisthmac_state *)drbg;
    const struct ccdigest_info *di = state->custom->di;

    const unsigned char cZero = 0x00;
    const unsigned char cOne  = 0x01;

    FUNC3(di->state_size, di->block_size, ctx);
    FUNC5(di, ctx, state->keysize, state->key);

    // 1. K = HMAC (K, V || 0x00 || provided_data).
    FUNC6(di, ctx, state->vsize, state->vptr);
    FUNC6(di, ctx, 1, &cZero);
    if (da && daLen) FUNC6(di, ctx, daLen, da);
    if (db && dbLen) FUNC6(di, ctx, dbLen, db);
    if (dc && dcLen) FUNC6(di, ctx, dcLen, dc);
    FUNC4(di, ctx, state->key);

    // One parameter must be non-empty, or return
    if (((da && daLen) || (db && dbLen) || (dc && dcLen))) {
        //  2. V=HMAC(K,V).
        FUNC2(di, state->keysize, state->key, state->vsize, state->vptr, state->vptr);
        //  4. K = HMAC (K, V || 0x01 || provided_data).
        FUNC5(di, ctx, state->keysize, state->key);
        FUNC6(di, ctx, state->vsize, state->vptr);
        FUNC6(di, ctx, 1, &cOne);
        if (da && daLen) FUNC6(di, ctx, daLen, da);
        if (db && dbLen) FUNC6(di, ctx, dbLen, db);
        if (dc && dcLen) FUNC6(di, ctx, dcLen, dc);
        FUNC4(di, ctx, state->key);
    }
    //  If additional data 5. V=HMAC(K,V)
    //  If no addtional data, this is step 2. V=HMAC(K,V).
    state->bytesLeft = 0;

    // FIPS 140-2 4.9.2 Conditional Tests
    // "the first n-bit block generated after power-up, initialization, or reset shall not be used, but shall be saved for comparison with the next n-bit block to be generated"
    // Generate the first block and the second block. Compare for FIPS and discard the first block
    // We keep the second block as the first set of data to be returned
    FUNC2(di, state->keysize, state->key, state->vsize, state->vptr, state->vptr);     // First block
    FUNC2(di, state->keysize, state->key, state->vsize, state->vptr, state->nextvptr); // First to be returned
    if (0==FUNC0(state->vsize, state->vptr, state->nextvptr)) {
        //The world as we know it has come to an end
        //the DRBG data structure is zeroized. subsequent calls to
        //DRBG ends up in NULL dereferencing and/or unpredictable state.
        //catastrophic error in SP 800-90A
        FUNC7(drbg);
        rc=CCDRBG_STATUS_ABORT;
        FUNC1(NULL);
        goto errOut;
    }
    rc=CCDRBG_STATUS_OK;
errOut:
    return rc;
}