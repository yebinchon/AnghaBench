
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
typedef int buf ;
struct TYPE_13__ {int nb_streams; int * pb; TYPE_2__** streams; } ;
struct TYPE_12__ {int dts; int pts; int size; int flags; int stream_index; } ;
struct TYPE_11__ {int index; TYPE_1__* codecpar; } ;
struct TYPE_10__ {scalar_t__ codec_type; int codec_id; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;
typedef scalar_t__ AMFDataType ;





 scalar_t__ AMF_DATA_TYPE_STRING ;
 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ;
 int AV_CODEC_ID_TEXT ;
 int AV_PKT_FLAG_KEY ;
 int ENOMEM ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int amf_get_string (int *,char*,int) ;
 int amf_skip_tag (int *,scalar_t__) ;
 int av_get_packet (int *,TYPE_3__*,int) ;
 int avio_r8 (int *) ;
 int avio_rb16 (int *) ;
 int avio_seek (int *,int,int ) ;
 TYPE_2__* create_stream (TYPE_4__*,scalar_t__) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int flv_data_packet(AVFormatContext *s, AVPacket *pkt,
                           int64_t dts, int64_t next)
{
    AVIOContext *pb = s->pb;
    AVStream *st = ((void*)0);
    char buf[20];
    int ret = AVERROR_INVALIDDATA;
    int i, length = -1;
    int array = 0;

    switch (avio_r8(pb)) {
    case 130:
        array = 1;
    case 129:
        avio_seek(pb, 4, SEEK_CUR);
    case 128:
        break;
    default:
        goto skip;
    }

    while (array || (ret = amf_get_string(pb, buf, sizeof(buf))) > 0) {
        AMFDataType type = avio_r8(pb);
        if (type == AMF_DATA_TYPE_STRING && (array || !strcmp(buf, "text"))) {
            length = avio_rb16(pb);
            ret = av_get_packet(pb, pkt, length);
            if (ret < 0)
                goto skip;
            else
                break;
        } else {
            if ((ret = amf_skip_tag(pb, type)) < 0)
                goto skip;
        }
    }

    if (length < 0) {
        ret = AVERROR_INVALIDDATA;
        goto skip;
    }

    for (i = 0; i < s->nb_streams; i++) {
        st = s->streams[i];
        if (st->codecpar->codec_type == AVMEDIA_TYPE_SUBTITLE)
            break;
    }

    if (i == s->nb_streams) {
        st = create_stream(s, AVMEDIA_TYPE_SUBTITLE);
        if (!st)
            return AVERROR(ENOMEM);
        st->codecpar->codec_id = AV_CODEC_ID_TEXT;
    }

    pkt->dts = dts;
    pkt->pts = dts;
    pkt->size = ret;

    pkt->stream_index = st->index;
    pkt->flags |= AV_PKT_FLAG_KEY;

skip:
    avio_seek(s->pb, next + 4, SEEK_SET);

    return ret;
}
