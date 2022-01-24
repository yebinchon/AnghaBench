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
struct TYPE_9__ {int /*<<< orphan*/ * outputs; TYPE_1__* priv; int /*<<< orphan*/ ** inputs; } ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct TYPE_7__ {int /*<<< orphan*/  palette_loaded; } ;
typedef  TYPE_1__ PaletteUseContext ;
typedef  TYPE_2__ FFFrameSync ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int AVERROR_BUG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    AVFilterLink *inlink = ctx->inputs[0];
    PaletteUseContext *s = ctx->priv;
    AVFrame *master, *second, *out = NULL;
    int ret;

    // writable for error diffusal dithering
    ret = FUNC3(fs, &master, &second);
    if (ret < 0)
        return ret;
    if (!master || !second) {
        ret = AVERROR_BUG;
        goto error;
    }
    if (!s->palette_loaded) {
        FUNC4(s, second);
    }
    ret = FUNC0(inlink, master, &out);
    if (ret < 0)
        goto error;
    return FUNC2(ctx->outputs[0], out);

error:
    FUNC1(&master);
    return ret;
}