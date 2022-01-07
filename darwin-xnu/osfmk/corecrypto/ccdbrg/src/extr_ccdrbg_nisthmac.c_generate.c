
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccdrbg_state {int dummy; } ;
struct ccdrbg_nisthmac_state {size_t bytesLeft; size_t vsize; int nextvptr; int reseed_counter; int vptr; int key; int keysize; struct ccdrbg_nisthmac_custom* custom; } ;
struct ccdrbg_nisthmac_custom {struct ccdigest_info* di; } ;
struct ccdigest_info {int dummy; } ;


 int CCDRBG_STATUS_ABORT ;
 int CCDRBG_STATUS_OK ;
 int CC_MEMCPY (char*,int ,size_t) ;
 int CC_SWAP (int ,int ) ;
 scalar_t__ cc_cmp_safe (size_t,int ,int ) ;
 int cc_print (char*,size_t,int ) ;
 int cc_try_abort (int *) ;
 int cchmac (struct ccdigest_info const*,int ,int ,size_t,int ,int ) ;
 int done (struct ccdrbg_state*) ;
 int dumpState (char*,struct ccdrbg_nisthmac_state*) ;
 int hmac_dbrg_update (struct ccdrbg_state*,size_t,void const*,int ,int *,int ,int *) ;
 int validate_gen_params (int ,size_t,size_t) ;

__attribute__((used)) static int generate(struct ccdrbg_state *drbg, size_t dataOutLength, void *dataOut,
                    size_t additionalLength, const void *additional)
{
    struct ccdrbg_nisthmac_state *state = (struct ccdrbg_nisthmac_state *)drbg;
    const struct ccdrbg_nisthmac_custom *custom = state->custom;
    const struct ccdigest_info *di = custom->di;

    int rc = validate_gen_params(state->reseed_counter, dataOutLength, additional==((void*)0)?0:additionalLength);
    if(rc!=CCDRBG_STATUS_OK) return rc;


    if (additional && additionalLength)
        hmac_dbrg_update(drbg, additionalLength, additional, 0, ((void*)0), 0, ((void*)0));


    char *outPtr = (char *) dataOut;
    while (dataOutLength > 0) {
        if (!state->bytesLeft) {

            cchmac(di, state->keysize, state->key, state->vsize, state->nextvptr, state->vptr);


            if (0==cc_cmp_safe(state->vsize, state->vptr, state->nextvptr)) {




                done(drbg);
                rc=CCDRBG_STATUS_ABORT;
                cc_try_abort(((void*)0));
                goto errOut;
            }
            CC_SWAP(state->nextvptr, state->vptr);
            state->bytesLeft = state->vsize;



        }
        size_t outLength = dataOutLength > state->bytesLeft ? state->bytesLeft : dataOutLength;
        CC_MEMCPY(outPtr, state->vptr, outLength);
        state->bytesLeft -= outLength;
        outPtr += outLength;
        dataOutLength -= outLength;
    }


    hmac_dbrg_update(drbg, additionalLength, additional, 0, ((void*)0), 0, ((void*)0));


    state->reseed_counter++;





    rc=CCDRBG_STATUS_OK;
errOut:
    return rc;
}
