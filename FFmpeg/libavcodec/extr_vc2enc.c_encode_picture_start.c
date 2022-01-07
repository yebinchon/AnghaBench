
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pb; } ;
typedef TYPE_1__ VC2EncContext ;


 int avpriv_align_put_bits (int *) ;
 int encode_picture_header (TYPE_1__*) ;
 int encode_wavelet_transform (TYPE_1__*) ;

__attribute__((used)) static void encode_picture_start(VC2EncContext *s)
{
    avpriv_align_put_bits(&s->pb);
    encode_picture_header(s);
    avpriv_align_put_bits(&s->pb);
    encode_wavelet_transform(s);
}
