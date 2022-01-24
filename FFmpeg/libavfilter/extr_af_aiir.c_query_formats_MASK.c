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
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_10__ {TYPE_2__** outputs; TYPE_1__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  in_formats; } ;
struct TYPE_8__ {int sample_format; scalar_t__ response; } ;
typedef  TYPE_1__ AudioIIRContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_3__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_PIX_FMT_NONE 129 
#define  AV_PIX_FMT_RGB0 128 
 int AV_SAMPLE_FMT_DBLP ; 
 int AV_SAMPLE_FMT_NONE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int const*) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVFilterContext *ctx)
{
    AudioIIRContext *s = ctx->priv;
    AVFilterFormats *formats;
    AVFilterChannelLayouts *layouts;
    enum AVSampleFormat sample_fmts[] = {
        AV_SAMPLE_FMT_DBLP,
        AV_SAMPLE_FMT_NONE
    };
    static const enum AVPixelFormat pix_fmts[] = {
        AV_PIX_FMT_RGB0,
        AV_PIX_FMT_NONE
    };
    int ret;

    if (s->response) {
        AVFilterLink *videolink = ctx->outputs[1];

        formats = FUNC4(pix_fmts);
        if ((ret = FUNC3(formats, &videolink->in_formats)) < 0)
            return ret;
    }

    layouts = FUNC1();
    if (!layouts)
        return FUNC0(ENOMEM);
    ret = FUNC5(ctx, layouts);
    if (ret < 0)
        return ret;

    sample_fmts[0] = s->sample_format;
    formats = FUNC4(sample_fmts);
    if (!formats)
        return FUNC0(ENOMEM);
    ret = FUNC6(ctx, formats);
    if (ret < 0)
        return ret;

    formats = FUNC2();
    if (!formats)
        return FUNC0(ENOMEM);
    return FUNC7(ctx, formats);
}