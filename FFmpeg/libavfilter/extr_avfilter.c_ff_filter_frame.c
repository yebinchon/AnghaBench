
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {TYPE_1__* filter; } ;
struct TYPE_15__ {scalar_t__ type; scalar_t__ format; scalar_t__ w; scalar_t__ h; scalar_t__ channels; scalar_t__ channel_layout; scalar_t__ sample_rate; TYPE_4__* dst; int fifo; int frame_count_in; scalar_t__ frame_wanted_out; scalar_t__ frame_blocked_in; } ;
struct TYPE_14__ {scalar_t__ format; scalar_t__ width; scalar_t__ height; scalar_t__ channels; scalar_t__ channel_layout; scalar_t__ sample_rate; } ;
struct TYPE_13__ {int name; } ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;


 int AVERROR_PATCHWELCOME ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_ERROR ;
 int FF_TPRINTF_START (int *,int ) ;
 int av_assert1 (int) ;
 int av_frame_free (TYPE_2__**) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int ff_filter_set_ready (TYPE_4__*,int) ;
 int ff_framequeue_add (int *,TYPE_2__*) ;
 int ff_tlog (int *,char*) ;
 int ff_tlog_link (int *,TYPE_3__*,int) ;
 int ff_tlog_ref (int *,TYPE_2__*,int) ;
 int filter_frame ;
 int filter_unblock (TYPE_4__*) ;
 scalar_t__ strcmp (int ,char*) ;

int ff_filter_frame(AVFilterLink *link, AVFrame *frame)
{
    int ret;
    FF_TPRINTF_START(((void*)0), filter_frame); ff_tlog_link(((void*)0), link, 1); ff_tlog(((void*)0), " "); ff_tlog_ref(((void*)0), frame, 1);


    if (link->type == AVMEDIA_TYPE_VIDEO) {
        if (strcmp(link->dst->filter->name, "buffersink") &&
            strcmp(link->dst->filter->name, "format") &&
            strcmp(link->dst->filter->name, "idet") &&
            strcmp(link->dst->filter->name, "null") &&
            strcmp(link->dst->filter->name, "scale")) {
            av_assert1(frame->format == link->format);
            av_assert1(frame->width == link->w);
            av_assert1(frame->height == link->h);
        }
    } else {
        if (frame->format != link->format) {
            av_log(link->dst, AV_LOG_ERROR, "Format change is not supported\n");
            goto error;
        }
        if (frame->channels != link->channels) {
            av_log(link->dst, AV_LOG_ERROR, "Channel count change is not supported\n");
            goto error;
        }
        if (frame->channel_layout != link->channel_layout) {
            av_log(link->dst, AV_LOG_ERROR, "Channel layout change is not supported\n");
            goto error;
        }
        if (frame->sample_rate != link->sample_rate) {
            av_log(link->dst, AV_LOG_ERROR, "Sample rate change is not supported\n");
            goto error;
        }
    }

    link->frame_blocked_in = link->frame_wanted_out = 0;
    link->frame_count_in++;
    filter_unblock(link->dst);
    ret = ff_framequeue_add(&link->fifo, frame);
    if (ret < 0) {
        av_frame_free(&frame);
        return ret;
    }
    ff_filter_set_ready(link->dst, 300);
    return 0;

error:
    av_frame_free(&frame);
    return AVERROR_PATCHWELCOME;
}
