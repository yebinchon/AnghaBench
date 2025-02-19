
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct representation {scalar_t__ cur_timestamp; scalar_t__ is_restart_needed; int input; int parent; scalar_t__ init_sec_buf_read_offset; scalar_t__ cur_seg_offset; int stream_index; TYPE_10__* ctx; } ;
typedef scalar_t__ int64_t ;
struct TYPE_17__ {TYPE_3__* priv_data; } ;
struct TYPE_16__ {int stream_index; int pts; } ;
struct TYPE_15__ {int n_videos; int n_audios; int n_subtitles; int interrupt_callback; struct representation** subtitles; struct representation** audios; struct representation** videos; } ;
struct TYPE_13__ {int den; scalar_t__ num; } ;
struct TYPE_14__ {TYPE_1__ time_base; } ;
struct TYPE_12__ {TYPE_2__** streams; } ;
typedef TYPE_3__ DASHContext ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int av_read_frame (TYPE_10__*,TYPE_4__*) ;
 scalar_t__ av_rescale (int ,scalar_t__,int ) ;
 int ff_check_interrupt (int ) ;
 int ff_format_io_close (int ,int *) ;
 int recheck_discard_flags (TYPE_5__*,struct representation**,int) ;
 int reopen_demux_for_component (TYPE_5__*,struct representation*) ;

__attribute__((used)) static int dash_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    DASHContext *c = s->priv_data;
    int ret = 0, i;
    int64_t mints = 0;
    struct representation *cur = ((void*)0);
    struct representation *rep = ((void*)0);

    recheck_discard_flags(s, c->videos, c->n_videos);
    recheck_discard_flags(s, c->audios, c->n_audios);
    recheck_discard_flags(s, c->subtitles, c->n_subtitles);

    for (i = 0; i < c->n_videos; i++) {
        rep = c->videos[i];
        if (!rep->ctx)
            continue;
        if (!cur || rep->cur_timestamp < mints) {
            cur = rep;
            mints = rep->cur_timestamp;
        }
    }
    for (i = 0; i < c->n_audios; i++) {
        rep = c->audios[i];
        if (!rep->ctx)
            continue;
        if (!cur || rep->cur_timestamp < mints) {
            cur = rep;
            mints = rep->cur_timestamp;
        }
    }

    for (i = 0; i < c->n_subtitles; i++) {
        rep = c->subtitles[i];
        if (!rep->ctx)
            continue;
        if (!cur || rep->cur_timestamp < mints) {
            cur = rep;
            mints = rep->cur_timestamp;
        }
    }

    if (!cur) {
        return AVERROR_INVALIDDATA;
    }
    while (!ff_check_interrupt(c->interrupt_callback) && !ret) {
        ret = av_read_frame(cur->ctx, pkt);
        if (ret >= 0) {

            cur->cur_timestamp = av_rescale(pkt->pts, (int64_t)cur->ctx->streams[0]->time_base.num * 90000, cur->ctx->streams[0]->time_base.den);
            pkt->stream_index = cur->stream_index;
            return 0;
        }
        if (cur->is_restart_needed) {
            cur->cur_seg_offset = 0;
            cur->init_sec_buf_read_offset = 0;
            ff_format_io_close(cur->parent, &cur->input);
            ret = reopen_demux_for_component(s, cur);
            cur->is_restart_needed = 0;
        }
    }
    return AVERROR_EOF;
}
