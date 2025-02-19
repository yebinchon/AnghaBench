
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * pb; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {int bits_per_coded_sample; int bit_rate; int channels; int sample_rate; int channel_layout; int codec_type; int codec_id; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AUD_HEADER_SIZE ;
 int AVERROR (int ) ;
 int AVERROR_PATCHWELCOME ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CODEC_ID_ADPCM_IMA_WS ;
 int AV_CODEC_ID_WESTWOOD_SND1 ;
 int AV_RL16 (unsigned char*) ;
 int EIO ;
 int ENOMEM ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_read (int *,unsigned char*,int) ;
 int avpriv_request_sample (TYPE_3__*,char*,...) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;

__attribute__((used)) static int wsaud_read_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVStream *st;
    unsigned char header[AUD_HEADER_SIZE];
    int sample_rate, channels, codec;

    if (avio_read(pb, header, AUD_HEADER_SIZE) != AUD_HEADER_SIZE)
        return AVERROR(EIO);

    sample_rate = AV_RL16(&header[0]);
    channels = (header[10] & 0x1) + 1;
    codec = header[11];


    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    switch (codec) {
    case 1:
        if (channels != 1) {
            avpriv_request_sample(s, "Stereo WS-SND1");
            return AVERROR_PATCHWELCOME;
        }
        st->codecpar->codec_id = AV_CODEC_ID_WESTWOOD_SND1;
        break;
    case 99:
        st->codecpar->codec_id = AV_CODEC_ID_ADPCM_IMA_WS;
        st->codecpar->bits_per_coded_sample = 4;
        st->codecpar->bit_rate = channels * sample_rate * 4;
        break;
    default:
        avpriv_request_sample(s, "Unknown codec: %d", codec);
        return AVERROR_PATCHWELCOME;
    }
    avpriv_set_pts_info(st, 64, 1, sample_rate);
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->channels = channels;
    st->codecpar->channel_layout = channels == 1 ? AV_CH_LAYOUT_MONO :
                                                   AV_CH_LAYOUT_STEREO;
    st->codecpar->sample_rate = sample_rate;

    return 0;
}
