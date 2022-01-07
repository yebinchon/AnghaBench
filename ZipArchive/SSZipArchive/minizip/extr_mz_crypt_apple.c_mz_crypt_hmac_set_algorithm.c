
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int algorithm; } ;
typedef TYPE_1__ mz_crypt_hmac ;



void mz_crypt_hmac_set_algorithm(void *handle, uint16_t algorithm)
{
    mz_crypt_hmac *hmac = (mz_crypt_hmac *)handle;
    hmac->algorithm = algorithm;
}
