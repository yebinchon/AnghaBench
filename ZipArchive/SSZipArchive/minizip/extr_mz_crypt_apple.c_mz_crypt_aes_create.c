
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void mz_crypt_aes ;


 scalar_t__ MZ_ALLOC (int) ;
 int memset (void*,int ,int) ;

void *mz_crypt_aes_create(void **handle)
{
    mz_crypt_aes *aes = ((void*)0);

    aes = (mz_crypt_aes *)MZ_ALLOC(sizeof(mz_crypt_aes));
    if (aes != ((void*)0))
        memset(aes, 0, sizeof(mz_crypt_aes));
    if (handle != ((void*)0))
        *handle = aes;

    return aes;
}
