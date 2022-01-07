
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
typedef TYPE_1__ mz_crypt_aes ;
typedef int int32_t ;



void mz_crypt_aes_set_mode(void *handle, int32_t mode)
{
    mz_crypt_aes *aes = (mz_crypt_aes *)handle;
    aes->mode = mode;
}
