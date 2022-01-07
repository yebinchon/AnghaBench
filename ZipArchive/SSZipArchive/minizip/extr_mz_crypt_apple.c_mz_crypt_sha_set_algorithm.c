
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int algorithm; } ;
typedef TYPE_1__ mz_crypt_sha ;



void mz_crypt_sha_set_algorithm(void *handle, uint16_t algorithm)
{
    mz_crypt_sha *sha = (mz_crypt_sha *)handle;
    sha->algorithm = algorithm;
}
