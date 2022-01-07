
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_6__ {scalar_t__ out_format; TYPE_1__* avctx; } ;
struct TYPE_5__ {scalar_t__ lowres; } ;
typedef TYPE_2__ MpegEncContext ;


 scalar_t__ FMT_MPEG1 ;
 int mpv_reconstruct_mb_internal (TYPE_2__*,int **,int,int) ;

void ff_mpv_reconstruct_mb(MpegEncContext *s, int16_t block[12][64])
{

    if(s->out_format == FMT_MPEG1) {
        if(s->avctx->lowres) mpv_reconstruct_mb_internal(s, block, 1, 1);
        else mpv_reconstruct_mb_internal(s, block, 0, 1);
    } else

    if(s->avctx->lowres) mpv_reconstruct_mb_internal(s, block, 1, 0);
    else mpv_reconstruct_mb_internal(s, block, 0, 0);
}
