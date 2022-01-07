
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int int8_t ;
struct TYPE_5__ {int flags; int* rand_shift; int *** prev_shift; int * noise; } ;
struct TYPE_4__ {int (* line_noise ) (int const*,int const*,int *,int,int) ;int (* line_noise_avg ) (int const*,int const*,int,int const**) ;TYPE_2__* param; } ;
typedef TYPE_1__ NoiseContext ;
typedef TYPE_2__ FilterParams ;


 int FFMIN (int,int) ;
 int MAX_RES ;
 int const NOISE_AVERAGED ;
 int av_image_copy_plane (int const*,int,int const*,int,int,int) ;
 int stub1 (int const*,int const*,int,int const**) ;
 int stub2 (int const*,int const*,int *,int,int) ;

__attribute__((used)) static void noise(uint8_t *dst, const uint8_t *src,
                  int dst_linesize, int src_linesize,
                  int width, int start, int end, NoiseContext *n, int comp)
{
    FilterParams *p = &n->param[comp];
    int8_t *noise = p->noise;
    const int flags = p->flags;
    int y;

    if (!noise) {
        if (dst != src)
            av_image_copy_plane(dst, dst_linesize, src, src_linesize, width, end - start);
        return;
    }

    for (y = start; y < end; y++) {
        const int ix = y & (MAX_RES - 1);
        int x;
        for (x=0; x < width; x+= MAX_RES) {
            int w = FFMIN(width - x, MAX_RES);
            int shift = p->rand_shift[ix];

            if (flags & NOISE_AVERAGED) {
                n->line_noise_avg(dst + x, src + x, w, (const int8_t**)p->prev_shift[ix]);
                p->prev_shift[ix][shift & 3] = noise + shift;
            } else {
                n->line_noise(dst + x, src + x, noise, w, shift);
            }
        }
        dst += dst_linesize;
        src += src_linesize;
    }
}
