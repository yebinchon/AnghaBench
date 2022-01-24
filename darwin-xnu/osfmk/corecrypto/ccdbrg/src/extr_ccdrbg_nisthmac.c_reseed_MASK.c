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
struct ccdrbg_nisthmac_state {int reseed_counter; } ;

/* Variables and functions */
 int CCDRBG_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct ccdrbg_nisthmac_state*) ; 
 int FUNC1 (struct ccdrbg_state*,size_t,void const*,size_t,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ccdrbg_nisthmac_state*,size_t,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ccdrbg_state *drbg,
       size_t entropyLength, const void *entropy,
       size_t additionalLength, const void *additional)
{

    struct ccdrbg_nisthmac_state *state = (struct ccdrbg_nisthmac_state *)drbg;
    int rc = FUNC2(state, entropyLength, additionalLength, 0);
    if(rc!=CCDRBG_STATUS_OK) return rc;

    int rx = FUNC1(drbg, entropyLength, entropy, additionalLength, additional, 0, NULL);
    state->reseed_counter = 1;

#if DRBG_NISTHMAC_DEBUG
    dumpState("Reseed: ", state);
#endif
    return rx;
}