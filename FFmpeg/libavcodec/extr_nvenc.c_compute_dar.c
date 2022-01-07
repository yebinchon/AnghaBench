
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num; int den; } ;
struct TYPE_5__ {int width; int height; TYPE_1__ sample_aspect_ratio; } ;
typedef TYPE_2__ AVCodecContext ;


 int av_reduce (int*,int*,int,int,int) ;

__attribute__((used)) static void compute_dar(AVCodecContext *avctx, int *dw, int *dh) {
    int sw, sh;

    sw = avctx->width;
    sh = avctx->height;

    if (avctx->sample_aspect_ratio.num > 0 && avctx->sample_aspect_ratio.den > 0) {
        sw *= avctx->sample_aspect_ratio.num;
        sh *= avctx->sample_aspect_ratio.den;
    }

    av_reduce(dw, dh, sw, sh, 1024 * 1024);
}
