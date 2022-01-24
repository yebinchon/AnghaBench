#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct rgbvec {float r; float g; float b; } ;
typedef  int /*<<< orphan*/  line ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int lutsize; struct rgbvec* lut; } ;
typedef  TYPE_1__ LUT3DContext ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int MAX_LEVEL ; 
 int MAX_LINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (char*,char*,float*,float*,float*) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFilterContext *ctx, FILE *f)
{
    LUT3DContext *lut3d = ctx->priv;
    float scale;
    int ret, i, j, k, size, size2, in = -1, out = -1;
    char line[MAX_LINE_SIZE];
    uint8_t rgb_map[3] = {0, 1, 2};

    while (FUNC5(line, sizeof(line), f)) {
        if      (!FUNC6(line, "in",  2)) in  = FUNC7(line + 2, NULL, 0);
        else if (!FUNC6(line, "out", 3)) out = FUNC7(line + 3, NULL, 0);
        else if (!FUNC6(line, "values", 6)) {
            const char *p = line + 6;
#define SET_COLOR(id) do {                  \
    while (av_isspace(*p))                  \
        p++;                                \
    switch (*p) {                           \
    case 'r': rgb_map[id] = 0; break;       \
    case 'g': rgb_map[id] = 1; break;       \
    case 'b': rgb_map[id] = 2; break;       \
    }                                       \
    while (*p && !av_isspace(*p))           \
        p++;                                \
} while (0)
            SET_COLOR(0);
            SET_COLOR(1);
            SET_COLOR(2);
            break;
        }
    }

    if (in == -1 || out == -1) {
        FUNC3(ctx, AV_LOG_ERROR, "in and out must be defined\n");
        return AVERROR_INVALIDDATA;
    }
    if (in < 2 || out < 2 ||
        in  > MAX_LEVEL*MAX_LEVEL*MAX_LEVEL ||
        out > MAX_LEVEL*MAX_LEVEL*MAX_LEVEL) {
        FUNC3(ctx, AV_LOG_ERROR, "invalid in (%d) or out (%d)\n", in, out);
        return AVERROR_INVALIDDATA;
    }
    for (size = 1; size*size*size < in; size++);
    lut3d->lutsize = size;
    size2 = size * size;

    ret = FUNC2(ctx, size);
    if (ret < 0)
        return ret;

    scale = 1. / (out - 1);

    for (k = 0; k < size; k++) {
        for (j = 0; j < size; j++) {
            for (i = 0; i < size; i++) {
                struct rgbvec *vec = &lut3d->lut[k * size2 + j * size + i];
                float val[3];

                FUNC0(0);
                if (FUNC4(line, "%f %f %f", val, val + 1, val + 2) != 3)
                    return AVERROR_INVALIDDATA;
                vec->r = val[rgb_map[0]] * scale;
                vec->g = val[rgb_map[1]] * scale;
                vec->b = val[rgb_map[2]] * scale;
            }
        }
    }
    return 0;
}