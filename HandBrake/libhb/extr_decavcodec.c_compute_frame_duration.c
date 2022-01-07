
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_14__ {double duration; double field_duration; TYPE_4__* context; TYPE_1__* title; } ;
typedef TYPE_5__ hb_work_private_t ;
struct TYPE_17__ {TYPE_2__* iformat; TYPE_6__** streams; } ;
struct TYPE_16__ {long long num; long long den; } ;
struct TYPE_15__ {TYPE_7__ time_base; TYPE_7__ avg_frame_rate; scalar_t__ nb_frames; scalar_t__ duration; } ;
struct TYPE_12__ {int num; int den; } ;
struct TYPE_13__ {int ticks_per_frame; TYPE_3__ time_base; } ;
struct TYPE_11__ {scalar_t__ raw_codec_id; } ;
struct TYPE_10__ {size_t video_id; scalar_t__ opaque_priv; } ;
typedef TYPE_6__ AVStream ;
typedef TYPE_7__ AVRational ;
typedef TYPE_8__ AVFormatContext ;


 scalar_t__ AV_CODEC_ID_NONE ;

__attribute__((used)) static void compute_frame_duration( hb_work_private_t *pv )
{
    double duration = 0.;
    int64_t max_fps = 64LL;


    if ( pv->context->ticks_per_frame > 1 )
        max_fps *= pv->context->ticks_per_frame;

    if ( pv->title->opaque_priv )
    {



        AVFormatContext *ic = (AVFormatContext*)pv->title->opaque_priv;
        AVStream *st = ic->streams[pv->title->video_id];
        if ( st->nb_frames && st->duration )
        {


            duration = ( (double)st->duration * (double)st->time_base.num ) /
                       ( (double)st->nb_frames * (double)st->time_base.den );
        }



        else if (ic->iformat->raw_codec_id == AV_CODEC_ID_NONE)
        {




            AVRational *tb = ((void*)0);
            if ( st->avg_frame_rate.den * 64LL > st->avg_frame_rate.num &&
                 st->avg_frame_rate.num > st->avg_frame_rate.den * 8LL )
            {
                tb = &(st->avg_frame_rate);
                duration = (double)tb->den / (double)tb->num;
            }
            else if ( st->time_base.num * 64LL > st->time_base.den &&
                      st->time_base.den > st->time_base.num * 8LL )
            {
                tb = &(st->time_base);
                duration = (double)tb->num / (double)tb->den;
            }
        }
        if ( !duration &&
             pv->context->time_base.num * max_fps > pv->context->time_base.den &&
             pv->context->time_base.den > pv->context->time_base.num * 8LL )
        {
            duration = (double)pv->context->time_base.num /
                        (double)pv->context->time_base.den;
            if ( pv->context->ticks_per_frame > 1 )
            {


                duration *= pv->context->ticks_per_frame;
            }
        }
    }
    else
    {
        if ( pv->context->time_base.num * max_fps > pv->context->time_base.den &&
             pv->context->time_base.den > pv->context->time_base.num * 8LL )
        {
            duration = (double)pv->context->time_base.num /
                            (double)pv->context->time_base.den;
            if ( pv->context->ticks_per_frame > 1 )
            {


                duration *= pv->context->ticks_per_frame;
            }
        }
    }
    if ( duration == 0 )
    {

        duration = 1001. / 24000.;
    }
    pv->duration = duration * 90000.;
    pv->field_duration = pv->duration;
    if ( pv->context->ticks_per_frame > 1 )
    {
        pv->field_duration /= pv->context->ticks_per_frame;
    }
}
