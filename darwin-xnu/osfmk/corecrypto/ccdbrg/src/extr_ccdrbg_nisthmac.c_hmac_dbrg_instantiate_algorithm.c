
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccdrbg_state {int dummy; } ;
struct ccdrbg_nisthmac_state {int reseed_counter; int vsize; int vptr; int key; int keysize; } ;


 int CCDRBG_STATUS_OK ;
 int CC_MEMSET (int ,int,int ) ;
 int cc_zero (int ,int ) ;
 int hmac_dbrg_update (struct ccdrbg_state*,size_t,void const*,size_t,void const*,size_t,void const*) ;

__attribute__((used)) static int hmac_dbrg_instantiate_algorithm(struct ccdrbg_state *drbg,
                                           size_t entropyLength, const void *entropy,
                                           size_t nonceLength, const void *nonce,
                                           size_t psLength, const void *ps)
{

    struct ccdrbg_nisthmac_state *state = (struct ccdrbg_nisthmac_state *)drbg;




    cc_zero(state->keysize, state->key);


    CC_MEMSET(state->vptr, 0x01, state->vsize);


    hmac_dbrg_update(drbg, entropyLength, entropy, nonceLength, nonce, psLength, ps);


    state->reseed_counter = 1;

    return CCDRBG_STATUS_OK;
}
