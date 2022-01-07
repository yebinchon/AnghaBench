
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int table; } ;
typedef TYPE_2__ VLC ;
struct TYPE_8__ {TYPE_1__* avctx; } ;
struct TYPE_6__ {int width; } ;
typedef int GetBitContext ;
typedef TYPE_3__ CLLCContext ;


 int CLOSE_READER (int ,int *) ;
 int GET_VLC (int,int ,int *,int ,int ,int ) ;
 int OPEN_READER (int ,int *) ;
 int UPDATE_CACHE (int ,int *) ;
 int VLC_BITS ;
 int VLC_DEPTH ;
 int bits ;

__attribute__((used)) static int read_rgb24_component_line(CLLCContext *ctx, GetBitContext *gb,
                                     int *top_left, VLC *vlc, uint8_t *outbuf)
{
    uint8_t *dst;
    int pred, code;
    int i;

    OPEN_READER(bits, gb);

    dst = outbuf;
    pred = *top_left;


    for (i = 0; i < ctx->avctx->width; i++) {
        UPDATE_CACHE(bits, gb);
        GET_VLC(code, bits, gb, vlc->table, VLC_BITS, VLC_DEPTH);

        pred += code;
        dst[0] = pred;
        dst += 3;
    }

    CLOSE_READER(bits, gb);


    *top_left = outbuf[0];

    return 0;
}
