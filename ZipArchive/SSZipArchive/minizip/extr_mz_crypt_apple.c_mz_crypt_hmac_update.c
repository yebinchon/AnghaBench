
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctx; } ;
typedef TYPE_1__ mz_crypt_hmac ;
typedef int int32_t ;


 int CCHmacUpdate (int *,void const*,int ) ;
 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_crypt_hmac_update(void *handle, const void *buf, int32_t size)
{
    mz_crypt_hmac *hmac = (mz_crypt_hmac *)handle;

    if (hmac == ((void*)0) || buf == ((void*)0))
        return MZ_PARAM_ERROR;

    CCHmacUpdate(&hmac->ctx, buf, size);
    return MZ_OK;
}
