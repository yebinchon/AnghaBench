
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ algorithm; int error; int ctx256; int ctx1; int initialized; } ;
typedef TYPE_1__ mz_crypt_sha ;
typedef int int32_t ;


 int CC_SHA1_Update (int *,void const*,int ) ;
 int CC_SHA256_Update (int *,void const*,int ) ;
 int MZ_HASH_ERROR ;
 scalar_t__ MZ_HASH_SHA1 ;
 int MZ_PARAM_ERROR ;

int32_t mz_crypt_sha_update(void *handle, const void *buf, int32_t size)
{
    mz_crypt_sha *sha = (mz_crypt_sha *)handle;

    if (sha == ((void*)0) || buf == ((void*)0) || !sha->initialized)
        return MZ_PARAM_ERROR;

    if (sha->algorithm == MZ_HASH_SHA1)
        sha->error = CC_SHA1_Update(&sha->ctx1, buf, size);
    else
        sha->error = CC_SHA256_Update(&sha->ctx256, buf, size);

    if (!sha->error)
        return MZ_HASH_ERROR;

    return size;
}
