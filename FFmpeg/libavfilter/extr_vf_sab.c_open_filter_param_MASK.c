#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int pre_filter_linesize; double quality; int* color_diff_coeff; int dist_width; int dist_linesize; int* dist_coeff; int /*<<< orphan*/  radius; int /*<<< orphan*/  strength; int /*<<< orphan*/  pre_filter_context; int /*<<< orphan*/  pre_filter_radius; int /*<<< orphan*/  pre_filter_buf; } ;
struct TYPE_9__ {int /*<<< orphan*/ * chrV; int /*<<< orphan*/  chrH; TYPE_1__* lumV; TYPE_1__* lumH; } ;
struct TYPE_8__ {int length; double* coeff; } ;
typedef  TYPE_1__ SwsVector ;
typedef  TYPE_2__ SwsFilter ;
typedef  TYPE_3__ FilterParam ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PIX_FMT_GRAY8 ; 
 int COLOR_DIFF_COEFF_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,unsigned int,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,double) ; 

__attribute__((used)) static int FUNC7(FilterParam *f, int width, int height, unsigned int sws_flags)
{
    SwsVector *vec;
    SwsFilter sws_f;
    int i, x, y;
    int linesize = FUNC1(width, 8);

    f->pre_filter_buf = FUNC2(linesize * height);
    if (!f->pre_filter_buf)
        return FUNC0(ENOMEM);

    f->pre_filter_linesize = linesize;
    vec = FUNC6(f->pre_filter_radius, f->quality);
    sws_f.lumH = sws_f.lumV = vec;
    sws_f.chrH = *(sws_f.chrV = NULL);
    f->pre_filter_context = FUNC5(width, height, AV_PIX_FMT_GRAY8,
                                           width, height, AV_PIX_FMT_GRAY8,
                                           sws_flags, &sws_f, NULL, NULL);
    FUNC4(vec);

    vec = FUNC6(f->strength, 5.0);
    for (i = 0; i < COLOR_DIFF_COEFF_SIZE; i++) {
        double d;
        int index = i-COLOR_DIFF_COEFF_SIZE/2 + vec->length/2;

        if (index < 0 || index >= vec->length) d = 0.0;
        else                                   d = vec->coeff[index];

        f->color_diff_coeff[i] = (int)(d/vec->coeff[vec->length/2]*(1<<12) + 0.5);
    }
    FUNC4(vec);

    vec = FUNC6(f->radius, f->quality);
    f->dist_width    = vec->length;
    f->dist_linesize = FUNC1(vec->length, 8);
    f->dist_coeff    = FUNC3(f->dist_width, f->dist_linesize * sizeof(*f->dist_coeff));
    if (!f->dist_coeff) {
        FUNC4(vec);
        return FUNC0(ENOMEM);
    }

    for (y = 0; y < vec->length; y++) {
        for (x = 0; x < vec->length; x++) {
            double d = vec->coeff[x] * vec->coeff[y];
            f->dist_coeff[x + y*f->dist_linesize] = (int)(d*(1<<10) + 0.5);
        }
    }
    FUNC4(vec);

    return 0;
}