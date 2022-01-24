#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int** data; int* linesize; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static inline void FUNC4(const AVFrame *src, const AVFrame *dst,
                                   int src_w, int src_h,
                                   int dst_w, int dst_h,
                                   int x, int y,
                                   int jobnr, int nb_jobs)
{
    uint8_t alpha;          ///< the amount of overlay to blend on to main
    uint8_t *s, *sa, *d, *da;
    int i, imax, j, jmax;
    int slice_start, slice_end;

    imax = FUNC2(-y + dst_h, src_h);
    slice_start = (imax * jobnr) / nb_jobs;
    slice_end = ((imax * (jobnr+1)) / nb_jobs);

    i = FUNC1(-y, 0);
    sa = src->data[3] + (i + slice_start) * src->linesize[3];
    da = dst->data[3] + (y + i + slice_start) * dst->linesize[3];

    for (i = i + slice_start; i < slice_end; i++) {
        j = FUNC1(-x, 0);
        s = sa + j;
        d = da + x+j;

        for (jmax = FUNC2(-x + dst_w, src_w); j < jmax; j++) {
            alpha = *s;
            if (alpha != 0 && alpha != 255) {
                uint8_t alpha_d = *d;
                alpha = FUNC3(alpha, alpha_d);
            }
            switch (alpha) {
            case 0:
                break;
            case 255:
                *d = *s;
                break;
            default:
                // apply alpha compositing: main_alpha += (1-main_alpha) * overlay_alpha
                *d += FUNC0((255 - *d) * *s);
            }
            d += 1;
            s += 1;
        }
        da += dst->linesize[3];
        sa += src->linesize[3];
    }
}