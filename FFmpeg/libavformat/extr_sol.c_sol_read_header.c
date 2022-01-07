
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_10__ {int * pb; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {unsigned int codec_tag; int codec_id; unsigned int channels; unsigned int sample_rate; int channel_layout; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CODEC_ID_SOL_DPCM ;
 unsigned int MKTAG (char,char,char,int ) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 unsigned int avio_r8 (int *) ;
 unsigned int avio_rl16 (int *) ;
 unsigned int avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,unsigned int) ;
 unsigned int sol_channels (unsigned int,unsigned int) ;
 int sol_codec_id (unsigned int,unsigned int) ;
 unsigned int sol_codec_type (unsigned int,unsigned int) ;

__attribute__((used)) static int sol_read_header(AVFormatContext *s)
{
    unsigned int magic,tag;
    AVIOContext *pb = s->pb;
    unsigned int id, channels, rate, type;
    enum AVCodecID codec;
    AVStream *st;


    magic = avio_rl16(pb);
    tag = avio_rl32(pb);
    if (tag != MKTAG('S', 'O', 'L', 0))
        return -1;
    rate = avio_rl16(pb);
    type = avio_r8(pb);
    avio_skip(pb, 4);
    if (magic != 0x0B8D)
        avio_r8(pb);

    codec = sol_codec_id(magic, type);
    channels = sol_channels(magic, type);

    if (codec == AV_CODEC_ID_SOL_DPCM)
        id = sol_codec_type(magic, type);
    else id = 0;


    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return -1;
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_tag = id;
    st->codecpar->codec_id = codec;
    st->codecpar->channels = channels;
    st->codecpar->channel_layout = channels == 1 ? AV_CH_LAYOUT_MONO :
                                                   AV_CH_LAYOUT_STEREO;
    st->codecpar->sample_rate = rate;
    avpriv_set_pts_info(st, 64, 1, rate);
    return 0;
}
