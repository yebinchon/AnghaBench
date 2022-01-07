
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bpp_idx; int pb; int strict_compliance; } ;
typedef TYPE_1__ VC2EncContext ;


 int put_bits (int *,int,int) ;
 int put_vc2_ue_uint (int *,int ) ;

__attribute__((used)) static void encode_signal_range(VC2EncContext *s)
{
    put_bits(&s->pb, 1, !s->strict_compliance);
    if (!s->strict_compliance)
        put_vc2_ue_uint(&s->pb, s->bpp_idx);
}
