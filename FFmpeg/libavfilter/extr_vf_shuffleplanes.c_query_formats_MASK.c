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
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int flags; scalar_t__ log2_chroma_w; scalar_t__ log2_chroma_h; } ;
struct TYPE_7__ {int* map; } ;
typedef  TYPE_1__ ShufflePlanesContext ;
typedef  TYPE_2__ AVPixFmtDescriptor ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int AV_PIX_FMT_FLAG_HWACCEL ; 
 int AV_PIX_FMT_FLAG_PAL ; 
 int FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx)
{
    AVFilterFormats *formats = NULL;
    ShufflePlanesContext *s = ctx->priv;
    int fmt, ret, i;

    for (fmt = 0; FUNC1(fmt); fmt++) {
        const AVPixFmtDescriptor *desc = FUNC1(fmt);
        int planes = FUNC0(fmt);

        if (!(desc->flags & AV_PIX_FMT_FLAG_PAL) &&
            !(desc->flags & AV_PIX_FMT_FLAG_HWACCEL)) {
            for (i = 0; i < 4; i++) {
                if (s->map[i] >= planes)
                    break;

                if ((desc->log2_chroma_h || desc->log2_chroma_w) &&
                    (i == 1 || i == 2) != (s->map[i] == 1 || s->map[i] == 2))
                    break;
            }

            if (i != 4)
                continue;
            if ((ret = FUNC2(&formats, fmt)) < 0) {
                FUNC3(&formats);
                return ret;
            }
        }
    }

    return FUNC4(ctx, formats);
}