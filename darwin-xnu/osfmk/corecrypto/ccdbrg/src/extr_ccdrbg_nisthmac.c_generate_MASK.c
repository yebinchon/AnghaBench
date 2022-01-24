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
struct ccdrbg_nisthmac_state {size_t bytesLeft; size_t vsize; int /*<<< orphan*/  nextvptr; int /*<<< orphan*/  reseed_counter; int /*<<< orphan*/  vptr; int /*<<< orphan*/  key; int /*<<< orphan*/  keysize; struct ccdrbg_nisthmac_custom* custom; } ;
struct ccdrbg_nisthmac_custom {struct ccdigest_info* di; } ;
struct ccdigest_info {int dummy; } ;

/* Variables and functions */
 int CCDRBG_STATUS_ABORT ; 
 int CCDRBG_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ccdigest_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ccdrbg_state*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct ccdrbg_nisthmac_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct ccdrbg_state*,size_t,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,size_t,size_t) ; 

__attribute__((used)) static int FUNC10(struct ccdrbg_state *drbg, size_t dataOutLength, void *dataOut,
                    size_t additionalLength, const void *additional)
{
    struct ccdrbg_nisthmac_state *state = (struct ccdrbg_nisthmac_state *)drbg;
    const struct ccdrbg_nisthmac_custom *custom = state->custom;
    const struct ccdigest_info *di = custom->di;

    int rc = FUNC9(state->reseed_counter, dataOutLength, additional==NULL?0:additionalLength);
    if(rc!=CCDRBG_STATUS_OK) return rc;

    // 2. If additional_input ≠ Null, then (Key, V) = HMAC_DRBG_Update (additional_input, Key, V).
    if (additional && additionalLength)
        FUNC8(drbg, additionalLength, additional, 0, NULL, 0, NULL);

    // hmac_dbrg_generate_algorithm
    char *outPtr = (char *) dataOut;
    while (dataOutLength > 0) {
        if (!state->bytesLeft) {
            //  5. V=HMAC(K,V).
            FUNC5(di, state->keysize, state->key, state->vsize, state->nextvptr, state->vptr);        // Won't be returned
            // FIPS 140-2 4.9.2 Conditional Tests
            // "Each subsequent generation of an n-bit block shall be compared with the previously generated block. The test shall fail if any two compared n-bit blocks are equal."
            if (0==FUNC2(state->vsize, state->vptr, state->nextvptr)) {
                //The world as we know it has come to an end
                //the DRBG data structure is zeroized. subsequent calls to
                //DRBG ends up in NULL dereferencing and/or unpredictable state.
                //catastrophic error in SP 800-90A
                FUNC6(drbg);
                rc=CCDRBG_STATUS_ABORT;
                FUNC4(NULL);
                goto errOut;
            }
            FUNC1(state->nextvptr, state->vptr);
            state->bytesLeft = state->vsize;
#if DRBG_NISTHMAC_DEBUG
            cc_print("generate blk: ", state->vsize, state->vptr);
#endif
        }
        size_t outLength = dataOutLength > state->bytesLeft ? state->bytesLeft : dataOutLength;
        FUNC0(outPtr, state->vptr, outLength);
        state->bytesLeft -= outLength;
        outPtr += outLength;
        dataOutLength -= outLength;
    }

    // 6. (Key, V) = HMAC_DRBG_Update (additional_input, Key, V).
    FUNC8(drbg, additionalLength, additional, 0, NULL, 0, NULL);

    // 7. reseed_counter = reseed_counter + 1.
    state->reseed_counter++;

#if DRBG_NISTHMAC_DEBUG
    dumpState("generate end: ", state);
    cc_print("generate end nxt: ", state->vsize, state->nextvptr);
#endif
    rc=CCDRBG_STATUS_OK;
errOut:
    return rc;
}