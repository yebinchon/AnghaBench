
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {int nb_streams; int ctx_flags; TYPE_2__** streams; TYPE_4__* priv_data; } ;
struct TYPE_17__ {int avg_frame_rate; TYPE_3__* codecpar; } ;
struct TYPE_16__ {int last_keyframe_stream_index; int framerate; int missing_streams; int video_bit_rate; int audio_bit_rate; } ;
struct TYPE_15__ {int codec_type; int bit_rate; } ;
struct TYPE_14__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {scalar_t__ codec_type; } ;
typedef TYPE_4__ FLVContext ;
typedef TYPE_5__ AVStream ;
typedef TYPE_6__ AVFormatContext ;


 int AVFMTCTX_NOHEADER ;
 int AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_DATA ;
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ;
 int AVMEDIA_TYPE_VIDEO ;
 int FLV_HEADER_FLAG_HASAUDIO ;
 int FLV_HEADER_FLAG_HASVIDEO ;
 int add_keyframes_index (TYPE_6__*) ;
 TYPE_5__* avformat_new_stream (TYPE_6__*,int *) ;
 int avpriv_set_pts_info (TYPE_5__*,int,int,int) ;

__attribute__((used)) static AVStream *create_stream(AVFormatContext *s, int codec_type)
{
    FLVContext *flv = s->priv_data;
    AVStream *st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return ((void*)0);
    st->codecpar->codec_type = codec_type;
    if (s->nb_streams>=3 ||( s->nb_streams==2
                           && s->streams[0]->codecpar->codec_type != AVMEDIA_TYPE_SUBTITLE
                           && s->streams[1]->codecpar->codec_type != AVMEDIA_TYPE_SUBTITLE
                           && s->streams[0]->codecpar->codec_type != AVMEDIA_TYPE_DATA
                           && s->streams[1]->codecpar->codec_type != AVMEDIA_TYPE_DATA))
        s->ctx_flags &= ~AVFMTCTX_NOHEADER;
    if (codec_type == AVMEDIA_TYPE_AUDIO) {
        st->codecpar->bit_rate = flv->audio_bit_rate;
        flv->missing_streams &= ~FLV_HEADER_FLAG_HASAUDIO;
    }
    if (codec_type == AVMEDIA_TYPE_VIDEO) {
        st->codecpar->bit_rate = flv->video_bit_rate;
        flv->missing_streams &= ~FLV_HEADER_FLAG_HASVIDEO;
        st->avg_frame_rate = flv->framerate;
    }


    avpriv_set_pts_info(st, 32, 1, 1000);
    flv->last_keyframe_stream_index = s->nb_streams - 1;
    add_keyframes_index(s);
    return st;
}
