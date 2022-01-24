#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {double amount; int msize_x; int msize_y; int steps_y; int steps_x; void** sc; void* sr; } ;
typedef  TYPE_1__ UnsharpFilterParam ;
struct TYPE_8__ {int nb_threads; } ;
typedef  TYPE_2__ UnsharpContext ;
struct TYPE_9__ {TYPE_2__* priv; } ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MAX_MATRIX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,char const*,...) ; 
 void* FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(AVFilterContext *ctx, UnsharpFilterParam *fp, const char *effect_type, int width)
{
    int z;
    UnsharpContext *s = ctx->priv;
    const char *effect = fp->amount == 0 ? "none" : fp->amount < 0 ? "blur" : "sharpen";

    if  (!(fp->msize_x & fp->msize_y & 1)) {
        FUNC1(ctx, AV_LOG_ERROR,
               "Invalid even size for %s matrix size %dx%d\n",
               effect_type, fp->msize_x, fp->msize_y);
        return FUNC0(EINVAL);
    }

    FUNC1(ctx, AV_LOG_VERBOSE, "effect:%s type:%s msize_x:%d msize_y:%d amount:%0.2f\n",
           effect, effect_type, fp->msize_x, fp->msize_y, fp->amount / 65535.0);

    fp->sr = FUNC2((MAX_MATRIX_SIZE - 1) * s->nb_threads, sizeof(uint32_t));
    fp->sc = FUNC2(2 * fp->steps_y * s->nb_threads, sizeof(uint32_t **));
    if (!fp->sr || !fp->sc)
        return FUNC0(ENOMEM);

    for (z = 0; z < 2 * fp->steps_y * s->nb_threads; z++)
        if (!(fp->sc[z] = FUNC2(width + 2 * fp->steps_x,
                                          sizeof(*(fp->sc[z])))))
            return FUNC0(ENOMEM);

    return 0;
}