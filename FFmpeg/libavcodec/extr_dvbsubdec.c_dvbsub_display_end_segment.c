
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {scalar_t__ compute_edt; } ;
typedef TYPE_1__ DVBSubContext ;
typedef int AVSubtitle ;
typedef TYPE_2__ AVCodecContext ;


 int save_display_set (TYPE_1__*) ;
 int save_subtitle_set (TYPE_2__*,int *,int*) ;

__attribute__((used)) static int dvbsub_display_end_segment(AVCodecContext *avctx, const uint8_t *buf,
                                      int buf_size, AVSubtitle *sub,int *got_output)
{
    DVBSubContext *ctx = avctx->priv_data;

    if(ctx->compute_edt == 0)
        save_subtitle_set(avctx, sub, got_output);



    return 0;
}
