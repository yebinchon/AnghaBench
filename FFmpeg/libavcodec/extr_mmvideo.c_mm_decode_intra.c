
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* avctx; TYPE_1__* frame; int gb; } ;
struct TYPE_6__ {int height; int width; } ;
struct TYPE_5__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_3__ MmContext ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_get_byte (int *) ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 int memset (scalar_t__,int,int) ;

__attribute__((used)) static int mm_decode_intra(MmContext * s, int half_horiz, int half_vert)
{
    int x = 0, y = 0;

    while (bytestream2_get_bytes_left(&s->gb) > 0) {
        int run_length, color;

        if (y >= s->avctx->height)
            return 0;

        color = bytestream2_get_byte(&s->gb);
        if (color & 0x80) {
            run_length = 1;
        }else{
            run_length = (color & 0x7f) + 2;
            color = bytestream2_get_byte(&s->gb);
        }

        if (half_horiz)
            run_length *=2;

        if (run_length > s->avctx->width - x)
            return AVERROR_INVALIDDATA;

        if (color) {
            memset(s->frame->data[0] + y*s->frame->linesize[0] + x, color, run_length);
            if (half_vert && y + half_vert < s->avctx->height)
                memset(s->frame->data[0] + (y+1)*s->frame->linesize[0] + x, color, run_length);
        }
        x+= run_length;

        if (x >= s->avctx->width) {
            x=0;
            y += 1 + half_vert;
        }
    }

    return 0;
}
