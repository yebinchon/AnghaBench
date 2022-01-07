
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {unsigned int const* global_palette; } ;
typedef TYPE_1__ DVDSubtitleContext ;
typedef TYPE_2__ AVCodecContext ;


 int INT_MAX ;
 int color_distance (unsigned int,unsigned int const) ;

__attribute__((used)) static void build_color_map(AVCodecContext *avctx, int cmap[],
                            const uint32_t palette[],
                            const int out_palette[], unsigned int const out_alpha[])
{
    DVDSubtitleContext *dvdc = avctx->priv_data;
    int i, j, d, best_d;
    uint32_t pseudopal[4];

    for (i = 0; i < 4; i++)
        pseudopal[i] = (out_alpha[i] << 24) |
                       dvdc->global_palette[out_palette[i]];
    for (i = 0; i < 256; i++) {
        best_d = INT_MAX;
        for (j = 0; j < 4; j++) {
            d = color_distance(pseudopal[j], palette[i]);
            if (d < best_d) {
                cmap[i] = j;
                best_d = d;
            }
        }
    }
}
