
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pb; } ;
typedef TYPE_1__ VC2EncContext ;


 int avpriv_align_put_bits (int *) ;
 int encode_transform_params (TYPE_1__*) ;

__attribute__((used)) static void encode_wavelet_transform(VC2EncContext *s)
{
    encode_transform_params(s);
    avpriv_align_put_bits(&s->pb);
}
