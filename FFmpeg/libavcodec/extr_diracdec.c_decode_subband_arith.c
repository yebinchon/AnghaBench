
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv_data; } ;
typedef int DiracContext ;
typedef TYPE_1__ AVCodecContext ;


 int decode_subband_internal (int *,void*,int) ;

__attribute__((used)) static int decode_subband_arith(AVCodecContext *avctx, void *b)
{
    DiracContext *s = avctx->priv_data;
    return decode_subband_internal(s, b, 1);
}
