
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ error; } ;
typedef TYPE_1__ mz_crypt_hmac ;


 int mz_crypt_hmac_free (void*) ;

void mz_crypt_hmac_reset(void *handle)
{
    mz_crypt_hmac *hmac = (mz_crypt_hmac *)handle;
    mz_crypt_hmac_free(handle);
    hmac->error = 0;
}
