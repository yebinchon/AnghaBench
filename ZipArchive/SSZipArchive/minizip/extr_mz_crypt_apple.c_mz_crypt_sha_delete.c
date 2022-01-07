
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mz_crypt_sha ;


 int MZ_FREE (int *) ;
 int mz_crypt_sha_reset (void*) ;

void mz_crypt_sha_delete(void **handle)
{
    mz_crypt_sha *sha = ((void*)0);
    if (handle == ((void*)0))
        return;
    sha = (mz_crypt_sha *)*handle;
    if (sha != ((void*)0))
    {
        mz_crypt_sha_reset(*handle);
        MZ_FREE(sha);
    }
    *handle = ((void*)0);
}
