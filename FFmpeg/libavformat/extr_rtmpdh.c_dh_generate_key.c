
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pub_key; int p; int * priv_key; int g; } ;
typedef TYPE_1__ FF_DH ;
typedef int * FFBigNum ;


 int MAX_BYTES ;
 int bn_free (int *) ;
 scalar_t__ bn_modexp (int *,int ,int *,int ) ;
 int bn_new (int *) ;
 int bn_num_bytes (int ) ;
 int bn_random (int *,int) ;

__attribute__((used)) static FFBigNum dh_generate_key(FF_DH *dh)
{
    int num_bytes;

    num_bytes = bn_num_bytes(dh->p) - 1;
    if (num_bytes <= 0 || num_bytes > MAX_BYTES)
        return ((void*)0);

    bn_new(dh->priv_key);
    if (!dh->priv_key)
        return ((void*)0);
    bn_random(dh->priv_key, 8 * num_bytes);

    bn_new(dh->pub_key);
    if (!dh->pub_key) {
        bn_free(dh->priv_key);
        return ((void*)0);
    }

    if (bn_modexp(dh->pub_key, dh->g, dh->priv_key, dh->p) < 0)
        return ((void*)0);

    return dh->pub_key;
}
