
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* codecpar; } ;
struct TYPE_5__ {int sample_rate; int channels; int block_align; int frame_size; int bit_rate; int channel_layout; int format; int codec_id; int codec_type; int extradata; } ;
typedef TYPE_2__ AVStream ;
typedef int AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CODEC_ID_CODEC2 ;
 int AV_SAMPLE_FMT_S16 ;
 int avpriv_codec2_mode_bit_rate (int *,int) ;
 int avpriv_codec2_mode_block_align (int *,int) ;
 int avpriv_codec2_mode_frame_size (int *,int) ;
 int avpriv_codec2_mode_from_extradata (int ) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;

__attribute__((used)) static int codec2_read_header_common(AVFormatContext *s, AVStream *st)
{
    int mode = avpriv_codec2_mode_from_extradata(st->codecpar->extradata);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_CODEC2;
    st->codecpar->sample_rate = 8000;
    st->codecpar->channels = 1;
    st->codecpar->format = AV_SAMPLE_FMT_S16;
    st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
    st->codecpar->bit_rate = avpriv_codec2_mode_bit_rate(s, mode);
    st->codecpar->frame_size = avpriv_codec2_mode_frame_size(s, mode);
    st->codecpar->block_align = avpriv_codec2_mode_block_align(s, mode);

    if (st->codecpar->bit_rate <= 0 ||
        st->codecpar->frame_size <= 0 ||
        st->codecpar->block_align <= 0) {
        return AVERROR_INVALIDDATA;
    }

    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}
