
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int p; int priv_key; } ;
typedef TYPE_1__ FF_DH ;
typedef int FFBigNum ;


 int bn_bn2bin (int ,int *,int) ;
 int bn_free (int ) ;
 int bn_modexp (int ,int ,int ,int ) ;
 int bn_new (int ) ;

__attribute__((used)) static int dh_compute_key(FF_DH *dh, FFBigNum pub_key_bn,
                          uint32_t secret_key_len, uint8_t *secret_key)
{
    FFBigNum k;
    int ret;

    bn_new(k);
    if (!k)
        return -1;

    if ((ret = bn_modexp(k, pub_key_bn, dh->priv_key, dh->p)) < 0) {
        bn_free(k);
        return ret;
    }
    bn_bn2bin(k, secret_key, secret_key_len);
    bn_free(k);


    return secret_key_len;
}
