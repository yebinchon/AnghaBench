
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_11__ {int size; int flags; int stream_index; int data; } ;
struct TYPE_10__ {TYPE_1__* codecpar; TYPE_4__ attached_pic; int index; int disposition; int * priv_data; } ;
struct TYPE_9__ {int fc; } ;
struct TYPE_8__ {int codec_id; int codec_type; } ;
typedef int MOVStreamContext ;
typedef TYPE_2__ MOVContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_BMP ;
 int AV_CODEC_ID_MJPEG ;
 int AV_CODEC_ID_PNG ;
 int AV_DISPOSITION_ATTACHED_PIC ;
 int AV_LOG_WARNING ;
 int AV_PKT_FLAG_KEY ;
 int AV_RB64 (int ) ;
 int ENOMEM ;
 int av_get_packet (int *,TYPE_4__*,int) ;
 int av_log (int ,int ,char*,int) ;
 int * av_mallocz (int) ;
 TYPE_3__* avformat_new_stream (int ,int *) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int mov_read_covr(MOVContext *c, AVIOContext *pb, int type, int len)
{
    AVPacket pkt;
    AVStream *st;
    MOVStreamContext *sc;
    enum AVCodecID id;
    int ret;

    switch (type) {
    case 0xd: id = AV_CODEC_ID_MJPEG; break;
    case 0xe: id = AV_CODEC_ID_PNG; break;
    case 0x1b: id = AV_CODEC_ID_BMP; break;
    default:
        av_log(c->fc, AV_LOG_WARNING, "Unknown cover type: 0x%x.\n", type);
        avio_skip(pb, len);
        return 0;
    }

    st = avformat_new_stream(c->fc, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    sc = av_mallocz(sizeof(*sc));
    if (!sc)
        return AVERROR(ENOMEM);
    st->priv_data = sc;

    ret = av_get_packet(pb, &pkt, len);
    if (ret < 0)
        return ret;

    if (pkt.size >= 8 && id != AV_CODEC_ID_BMP) {
        if (AV_RB64(pkt.data) == 0x89504e470d0a1a0a) {
            id = AV_CODEC_ID_PNG;
        } else {
            id = AV_CODEC_ID_MJPEG;
        }
    }

    st->disposition |= AV_DISPOSITION_ATTACHED_PIC;

    st->attached_pic = pkt;
    st->attached_pic.stream_index = st->index;
    st->attached_pic.flags |= AV_PKT_FLAG_KEY;

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = id;

    return 0;
}
