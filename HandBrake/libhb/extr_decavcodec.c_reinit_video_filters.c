
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_9__ ;
typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_17__ ;
typedef struct TYPE_27__ TYPE_16__ ;
typedef struct TYPE_26__ TYPE_15__ ;
typedef struct TYPE_25__ TYPE_14__ ;
typedef struct TYPE_24__ TYPE_13__ ;
typedef struct TYPE_23__ TYPE_12__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct TYPE_22__ {int width; int height; scalar_t__ pix_fmt; int * graph; } ;
struct TYPE_33__ {scalar_t__ io_pattern; } ;
struct TYPE_34__ {TYPE_5__ config; scalar_t__ decode; } ;
struct TYPE_26__ {int duration; TYPE_11__ video_filters; TYPE_14__* frame; TYPE_12__* title; TYPE_10__* job; TYPE_7__* context; TYPE_6__ qsv; } ;
typedef TYPE_15__ hb_work_private_t ;
typedef int hb_value_array_t ;
struct TYPE_27__ {int num; int den; } ;
typedef TYPE_16__ hb_rational_t ;
struct TYPE_32__ {int num; int den; } ;
struct TYPE_31__ {int num; int den; } ;
struct TYPE_29__ {int den; int num; } ;
struct TYPE_24__ {int width; int height; TYPE_1__ par; } ;
struct TYPE_28__ {int pix_fmt; TYPE_4__ vrate; TYPE_3__ time_base; TYPE_13__ geometry; } ;
typedef TYPE_17__ hb_filter_init_t ;
typedef int hb_dict_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_36__ {int height; int width; } ;
struct TYPE_37__ {TYPE_8__ geometry; } ;
struct TYPE_35__ {int width; int height; } ;
struct TYPE_30__ {int den; int num; } ;
struct TYPE_25__ {int format; int width; int height; TYPE_2__ sample_aspect_ratio; } ;
struct TYPE_23__ {int rotation; } ;
struct TYPE_21__ {int pix_fmt; TYPE_9__* title; } ;


 int AV_PIX_FMT_YUV420P ;
 int HB_ROTATION_0 ;



 scalar_t__ MFX_IOPATTERN_OUT_VIDEO_MEMORY ;
 int close_video_filters (TYPE_15__*) ;
 int hb_avfilter_append_dict (int *,char*,int *) ;
 int * hb_avfilter_graph_init (int *,TYPE_17__*) ;
 int * hb_dict_init () ;
 int hb_dict_set (int *,char*,int ) ;
 int hb_error (char*) ;
 int hb_log (char*) ;
 int * hb_value_array_init () ;
 int hb_value_free (int **) ;
 int hb_value_int (int) ;
 int * hb_value_null () ;
 int hb_value_string (char*) ;
 int hb_video_framerate_get_limits (int*,int*,int*) ;

int reinit_video_filters(hb_work_private_t * pv)
{
    int orig_width;
    int orig_height;
    hb_value_array_t * filters;
    hb_dict_t * settings;
    hb_filter_init_t filter_init;
    enum AVPixelFormat pix_fmt;
    if (!pv->job)
    {



        orig_width = pv->context->width & ~1;
        orig_height = pv->context->height & ~1;
        pix_fmt = AV_PIX_FMT_YUV420P;
    }
    else
    {
        if (pv->title->rotation == 128 ||
            pv->title->rotation == 129)
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

    if (pix_fmt == pv->frame->format &&
        orig_width == pv->frame->width &&
        orig_height == pv->frame->height &&
        HB_ROTATION_0 == pv->title->rotation)
    {

        close_video_filters(pv);
        return 0;
    }

    if (pv->video_filters.graph != ((void*)0) &&
        pv->video_filters.width == pv->frame->width &&
        pv->video_filters.height == pv->frame->height &&
        pv->video_filters.pix_fmt == pv->frame->format)
    {

        return 0;
    }

    pv->video_filters.width = pv->frame->width;
    pv->video_filters.height = pv->frame->height;
    pv->video_filters.pix_fmt = pv->frame->format;


    close_video_filters(pv);

    int clock_min, clock_max, clock;
    hb_rational_t vrate;

    hb_video_framerate_get_limits(&clock_min, &clock_max, &clock);
    vrate.num = clock;
    vrate.den = pv->duration * (clock / 90000.);

    filters = hb_value_array_init();
    if (pix_fmt != pv->frame->format ||
        orig_width != pv->frame->width ||
        orig_height != pv->frame->height)
    {

        settings = hb_dict_init();
        hb_dict_set(settings, "w", hb_value_int(orig_width));
        hb_dict_set(settings, "h", hb_value_int(orig_height));
        hb_dict_set(settings, "flags", hb_value_string("lanczos+accurate_rnd"));
        hb_avfilter_append_dict(filters, "scale", settings);

        settings = hb_dict_init();
        hb_dict_set(settings, "pix_fmts", hb_value_string("yuv420p"));
        hb_avfilter_append_dict(filters, "format", settings);
    }
    if (pv->title->rotation != HB_ROTATION_0)
    {
        switch (pv->title->rotation)
        {
            case 128:
                settings = hb_dict_init();
                hb_dict_set(settings, "dir", hb_value_string("cclock"));
                hb_avfilter_append_dict(filters, "transpose", settings);
                break;
            case 130:
                hb_avfilter_append_dict(filters, "hflip", hb_value_null());
                hb_avfilter_append_dict(filters, "vflip", hb_value_null());
                break;
            case 129:
                settings = hb_dict_init();
                hb_dict_set(settings, "dir", hb_value_string("clock"));
                hb_avfilter_append_dict(filters, "transpose", settings);
                break;
            default:
                hb_log("reinit_video_filters: Unknown rotation, failed");
        }
    }

    filter_init.pix_fmt = pv->frame->format;
    filter_init.geometry.width = pv->frame->width;
    filter_init.geometry.height = pv->frame->height;
    filter_init.geometry.par.num = pv->frame->sample_aspect_ratio.num;
    filter_init.geometry.par.den = pv->frame->sample_aspect_ratio.den;
    filter_init.time_base.num = 1;
    filter_init.time_base.den = 1;
    filter_init.vrate.num = vrate.num;
    filter_init.vrate.den = vrate.den;

    pv->video_filters.graph = hb_avfilter_graph_init(filters, &filter_init);
    hb_value_free(&filters);
    if (pv->video_filters.graph == ((void*)0))
    {
        hb_error("reinit_video_filters: failed to create filter graph");
        goto fail;
    }

    return 0;

fail:
    close_video_filters(pv);

    return 1;
}
