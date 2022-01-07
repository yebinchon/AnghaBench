
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int bpp; int padded_bits; TYPE_1__* avctx; int video_size; int video; } ;
struct TYPE_4__ {int height; int width; } ;
typedef int GetBitContext ;
typedef TYPE_2__ CDXLVideoContext ;


 int get_bits1 (int *) ;
 scalar_t__ init_get_bits8 (int *,int ,int ) ;
 int skip_bits (int *,int ) ;

__attribute__((used)) static void bitplanar2chunky(CDXLVideoContext *c, int linesize, uint8_t *out)
{
    GetBitContext gb;
    int x, y, plane;

    if (init_get_bits8(&gb, c->video, c->video_size) < 0)
        return;
    for (plane = 0; plane < c->bpp; plane++) {
        for (y = 0; y < c->avctx->height; y++) {
            for (x = 0; x < c->avctx->width; x++)
                out[linesize * y + x] |= get_bits1(&gb) << plane;
            skip_bits(&gb, c->padded_bits);
        }
    }
}
