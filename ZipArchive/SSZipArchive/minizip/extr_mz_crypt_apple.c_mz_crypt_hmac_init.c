
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ algorithm; int ctx; } ;
typedef TYPE_1__ mz_crypt_hmac ;
typedef int int32_t ;
typedef int CCHmacAlgorithm ;


 int CCHmacInit (int *,int ,void const*,int ) ;
 scalar_t__ MZ_HASH_SHA1 ;
 scalar_t__ MZ_HASH_SHA256 ;
 int MZ_OK ;
 int MZ_PARAM_ERROR ;
 int kCCHmacAlgSHA1 ;
 int kCCHmacAlgSHA256 ;
 int mz_crypt_hmac_reset (void*) ;

int32_t mz_crypt_hmac_init(void *handle, const void *key, int32_t key_length)
{
    mz_crypt_hmac *hmac = (mz_crypt_hmac *)handle;
    CCHmacAlgorithm algorithm = 0;

    if (hmac == ((void*)0) || key == ((void*)0))
        return MZ_PARAM_ERROR;

    mz_crypt_hmac_reset(handle);

    if (hmac->algorithm == MZ_HASH_SHA1)
        algorithm = kCCHmacAlgSHA1;
    else if (hmac->algorithm == MZ_HASH_SHA256)
        algorithm = kCCHmacAlgSHA256;
    else
        return MZ_PARAM_ERROR;

    CCHmacInit(&hmac->ctx, algorithm, key, key_length);
    return MZ_OK;
}
