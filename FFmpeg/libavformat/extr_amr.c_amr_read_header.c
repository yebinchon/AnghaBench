
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int * pb; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int sample_rate; int channels; int codec_type; int channel_layout; int codec_id; void* codec_tag; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AMRWB_header ;
 int AMR_header ;
 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CODEC_ID_AMR_NB ;
 int AV_CODEC_ID_AMR_WB ;
 int ENOMEM ;
 void* MKTAG (char,char,char,char) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_read (int *,int *,int) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 scalar_t__ memcmp (int *,int ,int) ;

__attribute__((used)) static int amr_read_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVStream *st;
    uint8_t header[9];

    avio_read(pb, header, 6);

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    if (memcmp(header, AMR_header, 6)) {
        avio_read(pb, header + 6, 3);
        if (memcmp(header, AMRWB_header, 9)) {
            return -1;
        }

        st->codecpar->codec_tag = MKTAG('s', 'a', 'w', 'b');
        st->codecpar->codec_id = AV_CODEC_ID_AMR_WB;
        st->codecpar->sample_rate = 16000;
    } else {
        st->codecpar->codec_tag = MKTAG('s', 'a', 'm', 'r');
        st->codecpar->codec_id = AV_CODEC_ID_AMR_NB;
        st->codecpar->sample_rate = 8000;
    }
    st->codecpar->channels = 1;
    st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}
