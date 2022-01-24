#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int filtersize; int difford; double sigma; int** gauss; } ;
typedef  TYPE_1__ ColorConstancyContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  ENOMEM ; 
 double FUNC1 (int,int) ; 
 int M_PI ; 
 int /*<<< orphan*/  FUNC2 (int**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int* FUNC4 (int,int) ; 
 double FUNC5 (int) ; 
 int FUNC6 (double,int) ; 
 double FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(AVFilterContext *ctx)
{
    ColorConstancyContext *s = ctx->priv;
    int filtersize = s->filtersize;
    int difford    = s->difford;
    double sigma   = s->sigma;
    double sum1, sum2;
    int i;

    for (i = 0; i <= difford; ++i) {
        s->gauss[i] = FUNC4(filtersize, sizeof(*s->gauss[i]));
        if (!s->gauss[i]) {
            for (; i >= 0; --i) {
                FUNC2(&s->gauss[i]);
            }
            FUNC3(ctx, AV_LOG_ERROR, "Out of memory while allocating gauss buffers.\n");
            return FUNC0(ENOMEM);
        }
    }

    // Order 0
    FUNC3(ctx, AV_LOG_TRACE, "Setting 0-d gauss with filtersize = %d.\n", filtersize);
    sum1 = 0.0;
    if (!sigma) {
        s->gauss[0][0] = 1; // Copying data to double instead of convolution
    } else {
        for (i = 0; i < filtersize; ++i) {
            s->gauss[0][i] = FUNC5(- FUNC6(FUNC1(filtersize, i), 2.) / (2 * sigma * sigma)) / ( FUNC7(2 * M_PI) * sigma );
            sum1 += s->gauss[0][i];
        }
        for (i = 0; i < filtersize; ++i) {
            s->gauss[0][i] /= sum1;
        }
    }
    // Order 1
    if (difford > 0) {
        FUNC3(ctx, AV_LOG_TRACE, "Setting 1-d gauss with filtersize = %d.\n", filtersize);
        sum1 = 0.0;
        for (i = 0; i < filtersize; ++i) {
            s->gauss[1][i] = - (FUNC1(filtersize, i) / FUNC6(sigma, 2)) * s->gauss[0][i];
            sum1 += s->gauss[1][i] * FUNC1(filtersize, i);
        }

        for (i = 0; i < filtersize; ++i) {
            s->gauss[1][i] /= sum1;
        }

        // Order 2
        if (difford > 1) {
            FUNC3(ctx, AV_LOG_TRACE, "Setting 2-d gauss with filtersize = %d.\n", filtersize);
            sum1 = 0.0;
            for (i = 0; i < filtersize; ++i) {
                s->gauss[2][i] = ( FUNC6(FUNC1(filtersize, i), 2) / FUNC6(sigma, 4) - 1/FUNC6(sigma, 2) )
                                 * s->gauss[0][i];
                sum1 += s->gauss[2][i];
            }

            sum2 = 0.0;
            for (i = 0; i < filtersize; ++i) {
                s->gauss[2][i] -= sum1 / (filtersize);
                sum2 += (0.5 * FUNC1(filtersize, i) * FUNC1(filtersize, i) * s->gauss[2][i]);
            }
            for (i = 0; i < filtersize ; ++i) {
                s->gauss[2][i] /= sum2;
            }
        }
    }
    return 0;
}