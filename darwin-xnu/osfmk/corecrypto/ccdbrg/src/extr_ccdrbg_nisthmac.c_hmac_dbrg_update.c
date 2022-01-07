
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccdrbg_state {int dummy; } ;
struct ccdrbg_nisthmac_state {size_t vsize; void const* vptr; void const* nextvptr; int key; int keysize; scalar_t__ bytesLeft; TYPE_1__* custom; } ;
struct ccdigest_info {int block_size; int state_size; } ;
struct TYPE_2__ {struct ccdigest_info* di; } ;


 int CCDRBG_STATUS_ABORT ;
 int CCDRBG_STATUS_ERROR ;
 int CCDRBG_STATUS_OK ;
 scalar_t__ cc_cmp_safe (size_t,void const*,void const*) ;
 int cc_try_abort (int *) ;
 int cchmac (struct ccdigest_info const*,int ,int ,size_t,void const*,void const*) ;
 int cchmac_ctx_decl (int ,int ,int ) ;
 int cchmac_final (struct ccdigest_info const*,int ,int ) ;
 int cchmac_init (struct ccdigest_info const*,int ,int ,int ) ;
 int cchmac_update (struct ccdigest_info const*,int ,size_t,void const*) ;
 int ctx ;
 int done (struct ccdrbg_state*) ;

__attribute__((used)) static int hmac_dbrg_update(struct ccdrbg_state *drbg,
                            size_t daLen, const void *da,
                            size_t dbLen, const void *db,
                            size_t dcLen, const void *dc
                            )
{
    int rc=CCDRBG_STATUS_ERROR;
    struct ccdrbg_nisthmac_state *state = (struct ccdrbg_nisthmac_state *)drbg;
    const struct ccdigest_info *di = state->custom->di;

    const unsigned char cZero = 0x00;
    const unsigned char cOne = 0x01;

    cchmac_ctx_decl(di->state_size, di->block_size, ctx);
    cchmac_init(di, ctx, state->keysize, state->key);


    cchmac_update(di, ctx, state->vsize, state->vptr);
    cchmac_update(di, ctx, 1, &cZero);
    if (da && daLen) cchmac_update(di, ctx, daLen, da);
    if (db && dbLen) cchmac_update(di, ctx, dbLen, db);
    if (dc && dcLen) cchmac_update(di, ctx, dcLen, dc);
    cchmac_final(di, ctx, state->key);


    if (((da && daLen) || (db && dbLen) || (dc && dcLen))) {

        cchmac(di, state->keysize, state->key, state->vsize, state->vptr, state->vptr);

        cchmac_init(di, ctx, state->keysize, state->key);
        cchmac_update(di, ctx, state->vsize, state->vptr);
        cchmac_update(di, ctx, 1, &cOne);
        if (da && daLen) cchmac_update(di, ctx, daLen, da);
        if (db && dbLen) cchmac_update(di, ctx, dbLen, db);
        if (dc && dcLen) cchmac_update(di, ctx, dcLen, dc);
        cchmac_final(di, ctx, state->key);
    }


    state->bytesLeft = 0;





    cchmac(di, state->keysize, state->key, state->vsize, state->vptr, state->vptr);
    cchmac(di, state->keysize, state->key, state->vsize, state->vptr, state->nextvptr);
    if (0==cc_cmp_safe(state->vsize, state->vptr, state->nextvptr)) {




        done(drbg);
        rc=CCDRBG_STATUS_ABORT;
        cc_try_abort(((void*)0));
        goto errOut;
    }
    rc=CCDRBG_STATUS_OK;
errOut:
    return rc;
}
