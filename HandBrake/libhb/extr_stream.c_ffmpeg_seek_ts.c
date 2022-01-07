
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_13__ {int chapter; int chapter_end; size_t ffmpeg_video_id; int need_keyframe; TYPE_6__* ffmpeg_ic; TYPE_1__* title; } ;
typedef TYPE_3__ hb_stream_t ;
struct TYPE_14__ {int duration; } ;
typedef TYPE_4__ hb_chapter_t ;
struct TYPE_16__ {TYPE_5__** streams; } ;
struct TYPE_12__ {scalar_t__ num; int den; } ;
struct TYPE_15__ {TYPE_2__ time_base; } ;
struct TYPE_11__ {int list_chapter; } ;
typedef TYPE_5__ AVStream ;
typedef TYPE_6__ AVFormatContext ;


 int AV_TIME_BASE ;
 int INT64_MAX ;
 int av_rescale (int,int ,int) ;
 int avformat_seek_file (TYPE_6__*,size_t,int ,int,int,int ) ;
 int ffmpeg_initial_timestamp (TYPE_3__*) ;
 int hb_list_count (int ) ;
 TYPE_4__* hb_list_item (int ,int) ;

__attribute__((used)) static int ffmpeg_seek_ts( hb_stream_t *stream, int64_t ts )
{
    AVFormatContext *ic = stream->ffmpeg_ic;
    int64_t pos;
    int ret;


    int count = hb_list_count(stream->title->list_chapter);
    if (count > 0)
    {
        int64_t sum_dur = 0;
        hb_chapter_t * chapter;
        int ii;
        for (ii = 0; ii < count; ii++)
        {
            chapter = hb_list_item( stream->title->list_chapter, ii );
            if (sum_dur + chapter->duration > ts)
            {
                break;
            }
            sum_dur += chapter->duration;
        }
        stream->chapter = ii;
        stream->chapter_end = sum_dur;
    }
    else
    {
        stream->chapter = 0;
        stream->chapter_end = INT64_MAX;
    }

    pos = ts * AV_TIME_BASE / 90000 + ffmpeg_initial_timestamp( stream );
    AVStream *st = stream->ffmpeg_ic->streams[stream->ffmpeg_video_id];


    pos = av_rescale(pos, st->time_base.den, AV_TIME_BASE * (int64_t)st->time_base.num);
    stream->need_keyframe = 1;


    ret = avformat_seek_file( ic, stream->ffmpeg_video_id, 0, pos, pos, 0);
    return ret;
}
