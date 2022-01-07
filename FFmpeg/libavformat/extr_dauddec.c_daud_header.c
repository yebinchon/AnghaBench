
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {int channels; int sample_rate; int bit_rate; int block_align; int bits_per_coded_sample; int channel_layout; int codec_tag; int codec_id; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_5POINT1 ;
 int AV_CODEC_ID_PCM_S24DAUD ;
 int ENOMEM ;
 int MKTAG (char,char,unsigned char,char) ;
 TYPE_2__* avformat_new_stream (int *,int *) ;

__attribute__((used)) static int daud_header(AVFormatContext *s) {
    AVStream *st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_PCM_S24DAUD;
    st->codecpar->codec_tag = MKTAG('d', 'a', 'u', 'd');
    st->codecpar->channels = 6;
    st->codecpar->channel_layout = AV_CH_LAYOUT_5POINT1;
    st->codecpar->sample_rate = 96000;
    st->codecpar->bit_rate = 3 * 6 * 96000 * 8;
    st->codecpar->block_align = 3 * 6;
    st->codecpar->bits_per_coded_sample = 24;
    return 0;
}
