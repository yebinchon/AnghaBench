
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ticks_per_frame; int time_base; } ;
typedef TYPE_1__ AVCodecContext ;


 double FFMAX (int ,int) ;
 double av_q2d (int ) ;

__attribute__((used)) static double get_fps(AVCodecContext *avctx)
{
    return 1.0 / av_q2d(avctx->time_base) / FFMAX(avctx->ticks_per_frame, 1);
}
