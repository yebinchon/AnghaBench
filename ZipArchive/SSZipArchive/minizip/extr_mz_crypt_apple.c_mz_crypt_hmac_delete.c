
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mz_crypt_hmac ;


 int MZ_FREE (int *) ;
 int mz_crypt_hmac_free (void*) ;

void mz_crypt_hmac_delete(void **handle)
{
    mz_crypt_hmac *hmac = ((void*)0);
    if (handle == ((void*)0))
        return;
    hmac = (mz_crypt_hmac *)*handle;
    if (hmac != ((void*)0))
    {
        mz_crypt_hmac_free(*handle);
        MZ_FREE(hmac);
    }
    *handle = ((void*)0);
}
