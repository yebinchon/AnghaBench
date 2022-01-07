
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int64_t ;
typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_5__ {int pb; int ** streams; TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ total_vframes; size_t video_stream_index; scalar_t__ total_aframes; size_t audio_stream_index; } ;
typedef TYPE_1__ IFVContext ;
typedef int AVStream ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_EOF ;
 int AVMEDIA_TYPE_VIDEO ;
 int av_add_index_entry (int *,int ,int ,int ,int ,int ) ;
 scalar_t__ avio_feof (int ) ;
 int avio_rl32 (int ) ;
 int avio_skip (int ,int) ;

__attribute__((used)) static int read_index(AVFormatContext *s,
                      enum AVMediaType frame_type,
                      uint32_t start_index)
{
    IFVContext *ifv = s->priv_data;
    AVStream *st;
    int64_t pos, size, timestamp;
    uint32_t end_index, i;
    int ret;

    if (frame_type == AVMEDIA_TYPE_VIDEO) {
        end_index = ifv->total_vframes;
        st = s->streams[ifv->video_stream_index];
    } else {
        end_index = ifv->total_aframes;
        st = s->streams[ifv->audio_stream_index];
    }

    for (i = start_index; i < end_index; i++) {
        if (avio_feof(s->pb))
            return AVERROR_EOF;
        pos = avio_rl32(s->pb);
        size = avio_rl32(s->pb);

        avio_skip(s->pb, 8);
        timestamp = avio_rl32(s->pb);

        ret = av_add_index_entry(st, pos, timestamp, size, 0, 0);
        if (ret < 0)
            return ret;

        avio_skip(s->pb, frame_type == AVMEDIA_TYPE_VIDEO ? 8: 4);
    }

    return 0;
}
