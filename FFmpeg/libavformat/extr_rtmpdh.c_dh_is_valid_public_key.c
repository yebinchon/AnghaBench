
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * FFBigNum ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int bn_cmp (int *,int *) ;
 scalar_t__ bn_cmp_1 (int *) ;
 int bn_copy (int *,int *) ;
 int bn_free (int *) ;
 int bn_modexp (int *,int *,int *,int *) ;
 int bn_new (int *) ;
 int bn_set_word (int *,int) ;
 int bn_sub_word (int *,int) ;

__attribute__((used)) static int dh_is_valid_public_key(FFBigNum y, FFBigNum p, FFBigNum q)
{
    FFBigNum bn = ((void*)0);
    int ret = AVERROR(EINVAL);

    bn_new(bn);
    if (!bn)
        return AVERROR(ENOMEM);


    bn_set_word(bn, 1);
    if (!bn_cmp(y, bn))
        goto fail;


    bn_copy(bn, p);
    bn_sub_word(bn, 1);
    if (!bn_cmp(y, bn))
        goto fail;
    if ((ret = bn_modexp(bn, y, q, p)) < 0)
        goto fail;

    ret = AVERROR(EINVAL);
    if (bn_cmp_1(bn))
        goto fail;

    ret = 0;
fail:
    bn_free(bn);

    return ret;
}
