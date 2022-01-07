
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int** data; int* linesize; } ;
typedef TYPE_1__ AVFrame ;


 int FAST_DIV255 (int) ;
 int FFMAX (int,int ) ;
 int FFMIN (int,int) ;
 int UNPREMULTIPLY_ALPHA (int,int) ;

__attribute__((used)) static inline void alpha_composite(const AVFrame *src, const AVFrame *dst,
                                   int src_w, int src_h,
                                   int dst_w, int dst_h,
                                   int x, int y,
                                   int jobnr, int nb_jobs)
{
    uint8_t alpha;
    uint8_t *s, *sa, *d, *da;
    int i, imax, j, jmax;
    int slice_start, slice_end;

    imax = FFMIN(-y + dst_h, src_h);
    slice_start = (imax * jobnr) / nb_jobs;
    slice_end = ((imax * (jobnr+1)) / nb_jobs);

    i = FFMAX(-y, 0);
    sa = src->data[3] + (i + slice_start) * src->linesize[3];
    da = dst->data[3] + (y + i + slice_start) * dst->linesize[3];

    for (i = i + slice_start; i < slice_end; i++) {
        j = FFMAX(-x, 0);
        s = sa + j;
        d = da + x+j;

        for (jmax = FFMIN(-x + dst_w, src_w); j < jmax; j++) {
            alpha = *s;
            if (alpha != 0 && alpha != 255) {
                uint8_t alpha_d = *d;
                alpha = UNPREMULTIPLY_ALPHA(alpha, alpha_d);
            }
            switch (alpha) {
            case 0:
                break;
            case 255:
                *d = *s;
                break;
            default:

                *d += FAST_DIV255((255 - *d) * *s);
            }
            d += 1;
            s += 1;
        }
        da += dst->linesize[3];
        sa += src->linesize[3];
    }
}
