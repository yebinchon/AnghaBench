
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int * pb; TYPE_3__* priv_data; } ;
struct TYPE_14__ {TYPE_1__* codecpar; int index; } ;
struct TYPE_12__ {int video_frame_height; int video_frame_width; } ;
struct TYPE_13__ {int audio_stream_index; int video_stream_index; scalar_t__ audio_buffer_size; scalar_t__ audio_stream_pts; scalar_t__ video_stream_pts; TYPE_2__ file_header; } ;
struct TYPE_11__ {int channels; int sample_rate; int bits_per_coded_sample; int bit_rate; int channel_layout; scalar_t__ codec_tag; int codec_id; int codec_type; int height; int width; } ;
typedef TYPE_2__ CinFileHeader ;
typedef TYPE_3__ CinDemuxContext ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CODEC_ID_DSICINAUDIO ;
 int AV_CODEC_ID_DSICINVIDEO ;
 int ENOMEM ;
 TYPE_4__* avformat_new_stream (TYPE_5__*,int *) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int,int) ;
 int cin_read_file_header (TYPE_3__*,int *) ;

__attribute__((used)) static int cin_read_header(AVFormatContext *s)
{
    int rc;
    CinDemuxContext *cin = s->priv_data;
    CinFileHeader *hdr = &cin->file_header;
    AVIOContext *pb = s->pb;
    AVStream *st;

    rc = cin_read_file_header(cin, pb);
    if (rc)
        return rc;

    cin->video_stream_pts = 0;
    cin->audio_stream_pts = 0;
    cin->audio_buffer_size = 0;


    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    avpriv_set_pts_info(st, 32, 1, 12);
    cin->video_stream_index = st->index;
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_DSICINVIDEO;
    st->codecpar->codec_tag = 0;
    st->codecpar->width = hdr->video_frame_width;
    st->codecpar->height = hdr->video_frame_height;


    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    avpriv_set_pts_info(st, 32, 1, 22050);
    cin->audio_stream_index = st->index;
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_DSICINAUDIO;
    st->codecpar->codec_tag = 0;
    st->codecpar->channels = 1;
    st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
    st->codecpar->sample_rate = 22050;
    st->codecpar->bits_per_coded_sample = 8;
    st->codecpar->bit_rate = st->codecpar->sample_rate * st->codecpar->bits_per_coded_sample * st->codecpar->channels;

    return 0;
}
