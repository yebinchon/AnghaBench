
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctx; } ;
typedef TYPE_1__ mz_crypt_hmac ;
typedef int int32_t ;
typedef int CCHmacContext ;


 int MZ_OK ;
 int MZ_PARAM_ERROR ;
 int memcpy (int *,int *,int) ;

int32_t mz_crypt_hmac_copy(void *src_handle, void *target_handle)
{
    mz_crypt_hmac *source = (mz_crypt_hmac *)src_handle;
    mz_crypt_hmac *target = (mz_crypt_hmac *)target_handle;

    if (source == ((void*)0) || target == ((void*)0))
        return MZ_PARAM_ERROR;

    memcpy(&target->ctx, &source->ctx, sizeof(CCHmacContext));
    return MZ_OK;
}
