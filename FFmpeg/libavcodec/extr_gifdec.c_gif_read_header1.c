
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int num; int den; } ;
struct TYPE_8__ {TYPE_1__ sample_aspect_ratio; } ;
struct TYPE_7__ {int transparent_color_index; int color_resolution; int has_global_palette; int bits_per_pixel; int background_color_index; int * global_palette; int bg_color; int gb; void* screen_height; void* screen_width; TYPE_5__* avctx; } ;
typedef TYPE_2__ GifState ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_get_bufferu (int *,int *,int) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_byteu (int *) ;
 void* bytestream2_get_le16u (int *) ;
 int ff_dlog (TYPE_5__*,char*,void*,void*,int,int) ;
 int gif87a_sig ;
 int gif89a_sig ;
 int gif_read_palette (TYPE_2__*,int *,int) ;
 scalar_t__ memcmp (int *,int ,int) ;

__attribute__((used)) static int gif_read_header1(GifState *s)
{
    uint8_t sig[6];
    int v, n;
    int background_color_index;

    if (bytestream2_get_bytes_left(&s->gb) < 13)
        return AVERROR_INVALIDDATA;


    bytestream2_get_bufferu(&s->gb, sig, 6);
    if (memcmp(sig, gif87a_sig, 6) &&
        memcmp(sig, gif89a_sig, 6))
        return AVERROR_INVALIDDATA;


    s->transparent_color_index = -1;
    s->screen_width = bytestream2_get_le16u(&s->gb);
    s->screen_height = bytestream2_get_le16u(&s->gb);

    v = bytestream2_get_byteu(&s->gb);
    s->color_resolution = ((v & 0x70) >> 4) + 1;
    s->has_global_palette = (v & 0x80);
    s->bits_per_pixel = (v & 0x07) + 1;
    background_color_index = bytestream2_get_byteu(&s->gb);
    n = bytestream2_get_byteu(&s->gb);
    if (n) {
        s->avctx->sample_aspect_ratio.num = n + 15;
        s->avctx->sample_aspect_ratio.den = 64;
    }

    ff_dlog(s->avctx, "screen_w=%d screen_h=%d bpp=%d global_palette=%d\n",
           s->screen_width, s->screen_height, s->bits_per_pixel,
           s->has_global_palette);

    if (s->has_global_palette) {
        s->background_color_index = background_color_index;
        n = 1 << s->bits_per_pixel;
        if (bytestream2_get_bytes_left(&s->gb) < n * 3)
            return AVERROR_INVALIDDATA;

        gif_read_palette(s, s->global_palette, n);
        s->bg_color = s->global_palette[s->background_color_index];
    } else
        s->background_color_index = -1;

    return 0;
}
