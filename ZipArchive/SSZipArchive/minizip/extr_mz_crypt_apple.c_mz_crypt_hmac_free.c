
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctx; } ;
typedef TYPE_1__ mz_crypt_hmac ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void mz_crypt_hmac_free(void *handle)
{
    mz_crypt_hmac *hmac = (mz_crypt_hmac *)handle;
    memset(&hmac->ctx, 0, sizeof(hmac->ctx));
}
