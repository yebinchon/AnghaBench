
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wavelet_depth; int pb; int wavelet_idx; } ;
typedef TYPE_1__ VC2EncContext ;


 int encode_quant_matrix (TYPE_1__*) ;
 int encode_slice_params (TYPE_1__*) ;
 int put_vc2_ue_uint (int *,int ) ;

__attribute__((used)) static void encode_transform_params(VC2EncContext *s)
{
    put_vc2_ue_uint(&s->pb, s->wavelet_idx);
    put_vc2_ue_uint(&s->pb, s->wavelet_depth);

    encode_slice_params(s);
    encode_quant_matrix(s);
}
