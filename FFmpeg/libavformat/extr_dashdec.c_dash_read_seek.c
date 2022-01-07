
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_12__ {int ctx; } ;
struct TYPE_11__ {TYPE_2__** streams; TYPE_3__* priv_data; } ;
struct TYPE_10__ {int n_videos; int n_audios; int n_subtitles; TYPE_6__** subtitles; TYPE_6__** audios; TYPE_6__** videos; scalar_t__ is_live; } ;
struct TYPE_8__ {int den; } ;
struct TYPE_9__ {TYPE_1__ time_base; } ;
typedef TYPE_3__ DASHContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVSEEK_FLAG_BACKWARD ;
 int AVSEEK_FLAG_BYTE ;
 int AV_ROUND_DOWN ;
 int AV_ROUND_UP ;
 int ENOSYS ;
 int av_rescale_rnd (int ,int,int ,int ) ;
 int dash_seek (TYPE_4__*,TYPE_6__*,int ,int,int) ;

__attribute__((used)) static int dash_read_seek(AVFormatContext *s, int stream_index, int64_t timestamp, int flags)
{
    int ret = 0, i;
    DASHContext *c = s->priv_data;
    int64_t seek_pos_msec = av_rescale_rnd(timestamp, 1000,
                                           s->streams[stream_index]->time_base.den,
                                           flags & AVSEEK_FLAG_BACKWARD ?
                                           AV_ROUND_DOWN : AV_ROUND_UP);
    if ((flags & AVSEEK_FLAG_BYTE) || c->is_live)
        return AVERROR(ENOSYS);


    for (i = 0; i < c->n_videos; i++) {
        if (!ret)
            ret = dash_seek(s, c->videos[i], seek_pos_msec, flags, !c->videos[i]->ctx);
    }
    for (i = 0; i < c->n_audios; i++) {
        if (!ret)
            ret = dash_seek(s, c->audios[i], seek_pos_msec, flags, !c->audios[i]->ctx);
    }
    for (i = 0; i < c->n_subtitles; i++) {
        if (!ret)
            ret = dash_seek(s, c->subtitles[i], seek_pos_msec, flags, !c->subtitles[i]->ctx);
    }

    return ret;
}
