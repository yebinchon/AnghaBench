
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ algorithm; int error; int ctx256; int ctx1; int initialized; } ;
typedef TYPE_1__ mz_crypt_sha ;
typedef scalar_t__ int32_t ;


 int CC_SHA1_Final (int *,int *) ;
 int CC_SHA256_Final (int *,int *) ;
 scalar_t__ MZ_BUF_ERROR ;
 scalar_t__ MZ_HASH_ERROR ;
 scalar_t__ MZ_HASH_SHA1 ;
 scalar_t__ MZ_HASH_SHA1_SIZE ;
 scalar_t__ MZ_HASH_SHA256_SIZE ;
 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;

int32_t mz_crypt_sha_end(void *handle, uint8_t *digest, int32_t digest_size)
{
    mz_crypt_sha *sha = (mz_crypt_sha *)handle;

    if (sha == ((void*)0) || digest == ((void*)0) || !sha->initialized)
        return MZ_PARAM_ERROR;

    if (sha->algorithm == MZ_HASH_SHA1)
    {
        if (digest_size < MZ_HASH_SHA1_SIZE)
            return MZ_BUF_ERROR;
        sha->error = CC_SHA1_Final(digest, &sha->ctx1);
    }
    else
    {
        if (digest_size < MZ_HASH_SHA256_SIZE)
            return MZ_BUF_ERROR;
        sha->error = CC_SHA256_Final(digest, &sha->ctx256);
    }

    if (!sha->error)
        return MZ_HASH_ERROR;

    return MZ_OK;
}
