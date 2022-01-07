
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mz_crypt_aes ;


 int MZ_FREE (int *) ;
 int mz_crypt_aes_reset (void*) ;

void mz_crypt_aes_delete(void **handle)
{
    mz_crypt_aes *aes = ((void*)0);
    if (handle == ((void*)0))
        return;
    aes = (mz_crypt_aes *)*handle;
    if (aes != ((void*)0))
    {
        mz_crypt_aes_reset(*handle);
        MZ_FREE(aes);
    }
    *handle = ((void*)0);
}
