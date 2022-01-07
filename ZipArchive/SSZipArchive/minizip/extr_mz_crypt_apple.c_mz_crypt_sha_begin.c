
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ algorithm; int initialized; int error; int ctx256; int ctx1; } ;
typedef TYPE_1__ mz_crypt_sha ;
typedef int int32_t ;


 int CC_SHA1_Init (int *) ;
 int CC_SHA256_Init (int *) ;
 int MZ_HASH_ERROR ;
 scalar_t__ MZ_HASH_SHA1 ;
 scalar_t__ MZ_HASH_SHA256 ;
 int MZ_OK ;
 int MZ_PARAM_ERROR ;
 int mz_crypt_sha_reset (void*) ;

int32_t mz_crypt_sha_begin(void *handle)
{
    mz_crypt_sha *sha = (mz_crypt_sha *)handle;

    if (sha == ((void*)0))
        return MZ_PARAM_ERROR;

    mz_crypt_sha_reset(handle);

    if (sha->algorithm == MZ_HASH_SHA1)
        sha->error = CC_SHA1_Init(&sha->ctx1);
    else if (sha->algorithm == MZ_HASH_SHA256)
        sha->error = CC_SHA256_Init(&sha->ctx256);
    else
        return MZ_PARAM_ERROR;

    if (!sha->error)
        return MZ_HASH_ERROR;

    sha->initialized = 1;
    return MZ_OK;
}
