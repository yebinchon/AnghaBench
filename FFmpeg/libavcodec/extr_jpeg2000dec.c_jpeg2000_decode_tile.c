
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {TYPE_3__* priv_data; } ;
struct TYPE_20__ {scalar_t__ format; } ;
struct TYPE_19__ {int ncomponents; int* cdef; int precision; TYPE_2__* tile; } ;
struct TYPE_18__ {TYPE_1__* codsty; } ;
struct TYPE_17__ {scalar_t__ mct; } ;
typedef TYPE_2__ Jpeg2000Tile ;
typedef TYPE_3__ Jpeg2000DecoderContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 scalar_t__ AV_PIX_FMT_GRAY16 ;
 scalar_t__ AV_PIX_FMT_RGB48 ;
 scalar_t__ AV_PIX_FMT_RGBA64 ;
 scalar_t__ AV_PIX_FMT_XYZ12 ;
 int mct_decode (TYPE_3__*,TYPE_2__*) ;
 int tile_codeblocks (TYPE_3__*,TYPE_2__*) ;
 int write_frame_16 (TYPE_3__*,TYPE_2__*,TYPE_4__*,int) ;
 int write_frame_8 (TYPE_3__*,TYPE_2__*,TYPE_4__*,int) ;

__attribute__((used)) static int jpeg2000_decode_tile(AVCodecContext *avctx, void *td,
                                int jobnr, int threadnr)
{
    Jpeg2000DecoderContext *s = avctx->priv_data;
    AVFrame *picture = td;
    Jpeg2000Tile *tile = s->tile + jobnr;
    int x;

    tile_codeblocks(s, tile);


    if (tile->codsty[0].mct)
        mct_decode(s, tile);

    for (x = 0; x < s->ncomponents; x++) {
        if (s->cdef[x] < 0) {
            for (x = 0; x < s->ncomponents; x++) {
                s->cdef[x] = x + 1;
            }
            if ((s->ncomponents & 1) == 0)
                s->cdef[s->ncomponents-1] = 0;
            break;
        }
    }

    if (s->precision <= 8) {
        write_frame_8(s, tile, picture, 8);
    } else {
        int precision = picture->format == AV_PIX_FMT_XYZ12 ||
                        picture->format == AV_PIX_FMT_RGB48 ||
                        picture->format == AV_PIX_FMT_RGBA64 ||
                        picture->format == AV_PIX_FMT_GRAY16 ? 16 : s->precision;

        write_frame_16(s, tile, picture, precision);
    }

    return 0;
}
