
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_23__ {int duration; TYPE_5__* context; } ;
typedef TYPE_6__ hb_work_private_t ;
struct TYPE_24__ {TYPE_1__* title; TYPE_6__* private_data; } ;
typedef TYPE_7__ hb_work_object_t ;
struct TYPE_19__ {int den; int num; } ;
struct TYPE_16__ {int width; int height; TYPE_2__ par; } ;
struct TYPE_17__ {int num; int den; } ;
struct TYPE_25__ {int video_decode_support; int color_range; TYPE_10__ geometry; int color_matrix; int color_transfer; TYPE_11__ rate; int color_prim; int pix_fmt; int name; int level; int profile; int bitrate; } ;
typedef TYPE_8__ hb_work_info_t ;
struct TYPE_20__ {int den; int num; } ;
struct TYPE_22__ {int height; int width; int codec_id; int pix_fmt; int color_range; int colorspace; int color_trc; int color_primaries; TYPE_4__* codec; int level; int profile; TYPE_3__ sample_aspect_ratio; int bit_rate; } ;
struct TYPE_21__ {int name; } ;
struct TYPE_18__ {scalar_t__ rotation; } ;




 int AV_PIX_FMT_YUV420P ;
 int AV_PIX_FMT_YUV420P10LE ;
 int AV_PIX_FMT_YUVJ420P ;
 int HB_DECODE_SUPPORT_QSV ;
 int HB_DECODE_SUPPORT_SW ;
 scalar_t__ HB_ROTATION_270 ;
 scalar_t__ HB_ROTATION_90 ;
 scalar_t__ avcodec_find_decoder_by_name (int ) ;
 int compute_frame_duration (TYPE_6__*) ;
 int get_color_matrix (int ,TYPE_10__) ;
 int get_color_prim (int ,TYPE_10__,TYPE_11__) ;
 int get_color_transfer (int ) ;
 int hb_qsv_decode_get_codec_name (int) ;
 int hb_video_framerate_get_limits (int*,int*,int*) ;
 int memset (TYPE_8__*,int ,int) ;

__attribute__((used)) static int decavcodecvInfo( hb_work_object_t *w, hb_work_info_t *info )
{
    hb_work_private_t *pv = w->private_data;

    int clock_min, clock_max, clock;
    hb_video_framerate_get_limits(&clock_min, &clock_max, &clock);

    memset( info, 0, sizeof(*info) );

    if (pv->context == ((void*)0) || pv->context->codec == ((void*)0))
        return 0;

    info->bitrate = pv->context->bit_rate;
    if (w->title->rotation == HB_ROTATION_90 ||
        w->title->rotation == HB_ROTATION_270)
    {



        info->geometry.width = pv->context->height & ~1;
        info->geometry.height = pv->context->width & ~1;

        info->geometry.par.num = pv->context->sample_aspect_ratio.den;
        info->geometry.par.den = pv->context->sample_aspect_ratio.num;
    }
    else
    {



        info->geometry.width = pv->context->width & ~1;
        info->geometry.height = pv->context->height & ~1;

        info->geometry.par.num = pv->context->sample_aspect_ratio.num;
        info->geometry.par.den = pv->context->sample_aspect_ratio.den;
    }

    compute_frame_duration( pv );
    info->rate.num = clock;
    info->rate.den = pv->duration * (clock / 90000.);

    info->profile = pv->context->profile;
    info->level = pv->context->level;
    info->name = pv->context->codec->name;

    info->pix_fmt = pv->context->pix_fmt;
    info->color_prim = get_color_prim(pv->context->color_primaries,
                                          info->geometry, info->rate);
    info->color_transfer = get_color_transfer(pv->context->color_trc);
    info->color_matrix = get_color_matrix(pv->context->colorspace,
                                            info->geometry);
    info->color_range = pv->context->color_range;

    info->video_decode_support = HB_DECODE_SUPPORT_SW;
    return 1;
}
