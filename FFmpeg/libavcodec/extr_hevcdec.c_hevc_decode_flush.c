
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int eos; int max_ra; int sei; } ;
typedef TYPE_1__ HEVCContext ;
typedef TYPE_2__ AVCodecContext ;


 int INT_MAX ;
 int ff_hevc_flush_dpb (TYPE_1__*) ;
 int ff_hevc_reset_sei (int *) ;

__attribute__((used)) static void hevc_decode_flush(AVCodecContext *avctx)
{
    HEVCContext *s = avctx->priv_data;
    ff_hevc_flush_dpb(s);
    ff_hevc_reset_sei(&s->sei);
    s->max_ra = INT_MAX;
    s->eos = 1;
}
