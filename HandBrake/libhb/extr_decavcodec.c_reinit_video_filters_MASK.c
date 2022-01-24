#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_9__ ;
typedef  struct TYPE_36__   TYPE_8__ ;
typedef  struct TYPE_35__   TYPE_7__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_17__ ;
typedef  struct TYPE_27__   TYPE_16__ ;
typedef  struct TYPE_26__   TYPE_15__ ;
typedef  struct TYPE_25__   TYPE_14__ ;
typedef  struct TYPE_24__   TYPE_13__ ;
typedef  struct TYPE_23__   TYPE_12__ ;
typedef  struct TYPE_22__   TYPE_11__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
struct TYPE_22__ {int width; int height; scalar_t__ pix_fmt; int /*<<< orphan*/ * graph; } ;
struct TYPE_33__ {scalar_t__ io_pattern; } ;
struct TYPE_34__ {TYPE_5__ config; scalar_t__ decode; } ;
struct TYPE_26__ {int duration; TYPE_11__ video_filters; TYPE_14__* frame; TYPE_12__* title; TYPE_10__* job; TYPE_7__* context; TYPE_6__ qsv; } ;
typedef  TYPE_15__ hb_work_private_t ;
typedef  int /*<<< orphan*/  hb_value_array_t ;
struct TYPE_27__ {int num; int den; } ;
typedef  TYPE_16__ hb_rational_t ;
struct TYPE_32__ {int num; int den; } ;
struct TYPE_31__ {int num; int den; } ;
struct TYPE_29__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_24__ {int width; int height; TYPE_1__ par; } ;
struct TYPE_28__ {int pix_fmt; TYPE_4__ vrate; TYPE_3__ time_base; TYPE_13__ geometry; } ;
typedef  TYPE_17__ hb_filter_init_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_36__ {int height; int width; } ;
struct TYPE_37__ {TYPE_8__ geometry; } ;
struct TYPE_35__ {int width; int height; } ;
struct TYPE_30__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_25__ {int format; int width; int height; TYPE_2__ sample_aspect_ratio; } ;
struct TYPE_23__ {int rotation; } ;
struct TYPE_21__ {int pix_fmt; TYPE_9__* title; } ;

/* Variables and functions */
 int AV_PIX_FMT_YUV420P ; 
 int HB_ROTATION_0 ; 
#define  HB_ROTATION_180 130 
#define  HB_ROTATION_270 129 
#define  HB_ROTATION_90 128 
 scalar_t__ MFX_IOPATTERN_OUT_VIDEO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_17__*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*,int*) ; 

int FUNC13(hb_work_private_t * pv)
{
    int                orig_width;
    int                orig_height;
    hb_value_array_t * filters;
    hb_dict_t        * settings;
    hb_filter_init_t   filter_init;
    enum AVPixelFormat pix_fmt;

#if HB_PROJECT_FEATURE_QSV
    if (pv->qsv.decode &&
        pv->qsv.config.io_pattern == MFX_IOPATTERN_OUT_VIDEO_MEMORY)
    {
        // Can't use software filters when decoding with QSV opaque memory
        return 0;
    }
#endif
    if (!pv->job)
    {
        // HandBrake's video pipeline uses yuv420 color.  This means all
        // dimensions must be even.  So we must adjust the dimensions
        // of incoming video if not even.
        orig_width = pv->context->width & ~1;
        orig_height = pv->context->height & ~1;
        pix_fmt = AV_PIX_FMT_YUV420P;
    }
    else
    {
        if (pv->title->rotation == HB_ROTATION_90 ||
            pv->title->rotation == HB_ROTATION_270)
        {
            orig_width = pv->job->title->geometry.height;
            orig_height = pv->job->title->geometry.width;
        }
        else
        {
            orig_width = pv->job->title->geometry.width;
            orig_height = pv->job->title->geometry.height;
        }
        pix_fmt = pv->job->pix_fmt;
    }

    if (pix_fmt            == pv->frame->format  &&
        orig_width         == pv->frame->width   &&
        orig_height        == pv->frame->height  &&
        HB_ROTATION_0      == pv->title->rotation)
    {
        // No filtering required.
        FUNC0(pv);
        return 0;
    }

    if (pv->video_filters.graph   != NULL              &&
        pv->video_filters.width   == pv->frame->width  &&
        pv->video_filters.height  == pv->frame->height &&
        pv->video_filters.pix_fmt == pv->frame->format)
    {
        // Current filter settings are good
        return 0;
    }

    pv->video_filters.width   = pv->frame->width;
    pv->video_filters.height  = pv->frame->height;
    pv->video_filters.pix_fmt = pv->frame->format;

    // New filter required, create filter graph
    FUNC0(pv);

    int clock_min, clock_max, clock;
    hb_rational_t vrate;

    FUNC12(&clock_min, &clock_max, &clock);
    vrate.num = clock;
    vrate.den = pv->duration * (clock / 90000.);

    filters = FUNC7();
    if (pix_fmt            != pv->frame->format ||
        orig_width         != pv->frame->width  ||
        orig_height        != pv->frame->height)
    {

        settings = FUNC3();
        FUNC4(settings, "w", FUNC9(orig_width));
        FUNC4(settings, "h", FUNC9(orig_height));
        FUNC4(settings, "flags", FUNC11("lanczos+accurate_rnd"));
        FUNC1(filters, "scale", settings);

        settings = FUNC3();
        FUNC4(settings, "pix_fmts", FUNC11("yuv420p"));
        FUNC1(filters, "format", settings);
    }
    if (pv->title->rotation != HB_ROTATION_0)
    {
        switch (pv->title->rotation)
        {
            case HB_ROTATION_90:
                settings = FUNC3();
                FUNC4(settings, "dir", FUNC11("cclock"));
                FUNC1(filters, "transpose", settings);
                break;
            case HB_ROTATION_180:
                FUNC1(filters, "hflip", FUNC10());
                FUNC1(filters, "vflip", FUNC10());
                break;
            case HB_ROTATION_270:
                settings = FUNC3();
                FUNC4(settings, "dir", FUNC11("clock"));
                FUNC1(filters, "transpose", settings);
                break;
            default:
                FUNC6("reinit_video_filters: Unknown rotation, failed");
        }
    }

    filter_init.pix_fmt           = pv->frame->format;
    filter_init.geometry.width    = pv->frame->width;
    filter_init.geometry.height   = pv->frame->height;
    filter_init.geometry.par.num  = pv->frame->sample_aspect_ratio.num;
    filter_init.geometry.par.den  = pv->frame->sample_aspect_ratio.den;
    filter_init.time_base.num     = 1;
    filter_init.time_base.den     = 1;
    filter_init.vrate.num         = vrate.num;
    filter_init.vrate.den         = vrate.den;

    pv->video_filters.graph = FUNC2(filters, &filter_init);
    FUNC8(&filters);
    if (pv->video_filters.graph == NULL)
    {
        FUNC5("reinit_video_filters: failed to create filter graph");
        goto fail;
    }

    return 0;

fail:
    FUNC0(pv);

    return 1;
}