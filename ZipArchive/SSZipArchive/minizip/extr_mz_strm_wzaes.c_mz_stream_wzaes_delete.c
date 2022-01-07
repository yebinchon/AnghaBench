
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hmac; int aes; } ;
typedef TYPE_1__ mz_stream_wzaes ;


 int MZ_FREE (TYPE_1__*) ;
 int mz_crypt_aes_delete (int *) ;
 int mz_crypt_hmac_delete (int *) ;

void mz_stream_wzaes_delete(void **stream)
{
    mz_stream_wzaes *wzaes = ((void*)0);
    if (stream == ((void*)0))
        return;
    wzaes = (mz_stream_wzaes *)*stream;
    if (wzaes != ((void*)0))
    {
        mz_crypt_aes_delete(&wzaes->aes);
        mz_crypt_hmac_delete(&wzaes->hmac);
        MZ_FREE(wzaes);
    }
    *stream = ((void*)0);
}
