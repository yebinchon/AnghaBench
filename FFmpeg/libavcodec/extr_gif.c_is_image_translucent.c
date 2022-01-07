
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int height; int width; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int transparent_index; } ;
typedef TYPE_1__ GIFContext ;
typedef TYPE_2__ AVCodecContext ;



__attribute__((used)) static int is_image_translucent(AVCodecContext *avctx,
                                const uint8_t *buf, const int linesize)
{
    GIFContext *s = avctx->priv_data;
    int trans = s->transparent_index;

    if (trans < 0)
        return 0;

    for (int y = 0; y < avctx->height; y++) {
        for (int x = 0; x < avctx->width; x++) {
            if (buf[x] == trans) {
                return 1;
            }
        }
        buf += linesize;
    }

    return 0;
}
