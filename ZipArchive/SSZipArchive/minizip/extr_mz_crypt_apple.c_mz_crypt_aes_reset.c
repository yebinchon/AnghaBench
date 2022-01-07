
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * crypt; } ;
typedef TYPE_1__ mz_crypt_aes ;


 int CCCryptorRelease (int *) ;

void mz_crypt_aes_reset(void *handle)
{
    mz_crypt_aes *aes = (mz_crypt_aes *)handle;

    if (aes->crypt != ((void*)0))
        CCCryptorRelease(aes->crypt);
    aes->crypt = ((void*)0);
}
