
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int block_align; int bit_rate; } ;
typedef TYPE_1__ AVCodecContext ;


 int FFMIN (int,int) ;

__attribute__((used)) static int sipr_split(AVCodecContext *avctx, const uint8_t *buf, int buf_size)
{
    int next;

    switch (avctx->block_align) {
    case 20:
    case 19:
    case 29:
    case 37: next = avctx->block_align; break;
    default:
        if (avctx->bit_rate > 12200) next = 20;
        else if (avctx->bit_rate > 7500 ) next = 19;
        else if (avctx->bit_rate > 5750 ) next = 29;
        else next = 37;
    }

    return FFMIN(next, buf_size);
}
