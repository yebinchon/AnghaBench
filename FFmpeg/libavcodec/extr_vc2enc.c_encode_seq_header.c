
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int interlaced; int pb; int base_vf; } ;
typedef TYPE_1__ VC2EncContext ;


 int avpriv_align_put_bits (int *) ;
 int encode_parse_params (TYPE_1__*) ;
 int encode_source_params (TYPE_1__*) ;
 int put_vc2_ue_uint (int *,int ) ;

__attribute__((used)) static void encode_seq_header(VC2EncContext *s)
{
    avpriv_align_put_bits(&s->pb);
    encode_parse_params(s);
    put_vc2_ue_uint(&s->pb, s->base_vf);
    encode_source_params(s);
    put_vc2_ue_uint(&s->pb, s->interlaced);
}
