
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccdrbg_state {int dummy; } ;
struct ccdrbg_nisthmac_state {scalar_t__ vsize; scalar_t__ v; scalar_t__ nextvptr; scalar_t__ vptr; scalar_t__ keysize; TYPE_1__* custom; scalar_t__ bytesLeft; } ;
struct ccdrbg_info {TYPE_1__* custom; } ;
struct ccdigest_info {scalar_t__ output_size; } ;
struct TYPE_2__ {struct ccdigest_info* di; } ;


 int CCDRBG_STATUS_OK ;
 int done (struct ccdrbg_state*) ;
 int dumpState (char*,struct ccdrbg_nisthmac_state*) ;
 int hmac_dbrg_instantiate_algorithm (struct ccdrbg_state*,size_t,void const*,size_t,void const*,size_t,void const*) ;
 int validate_inputs (struct ccdrbg_nisthmac_state*,size_t,int ,size_t) ;

__attribute__((used)) static int init(const struct ccdrbg_info *info, struct ccdrbg_state *drbg,
                size_t entropyLength, const void* entropy,
                size_t nonceLength, const void* nonce,
                size_t psLength, const void* ps)
{
    struct ccdrbg_nisthmac_state *state=(struct ccdrbg_nisthmac_state *)drbg;
    state->bytesLeft = 0;
    state->custom = info->custom;

    int rc = validate_inputs(state , entropyLength, 0, psLength);
    if(rc!=CCDRBG_STATUS_OK){


        done(drbg);
        return rc;
    }

    const struct ccdigest_info *di = state->custom->di;
    state->vsize = di->output_size;
    state->keysize = di->output_size;
    state->vptr=state->v;
    state->nextvptr=state->v+state->vsize;


    hmac_dbrg_instantiate_algorithm(drbg, entropyLength, entropy, nonceLength, nonce, psLength, ps);




    return CCDRBG_STATUS_OK;

}
