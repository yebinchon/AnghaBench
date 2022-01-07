
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * pb; } ;
struct TYPE_7__ {int stream_index; int flags; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_PKT_FLAG_KEY ;
 int EIO ;

 unsigned int LMLM4_INVALID ;

 unsigned int LMLM4_MAX_PACKET_SIZE ;


 int av_get_packet (int *,TYPE_1__*,unsigned int) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 unsigned int avio_rb16 (int *) ;
 unsigned int avio_rb32 (int *) ;
 int avio_skip (int *,unsigned int) ;

__attribute__((used)) static int lmlm4_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    int ret;
    unsigned int frame_type, packet_size, padding, frame_size;

    avio_rb16(pb);
    frame_type = avio_rb16(pb);
    packet_size = avio_rb32(pb);
    padding = -packet_size & 511;
    frame_size = packet_size - 8;

    if (frame_type > 129 || frame_type == LMLM4_INVALID) {
        av_log(s, AV_LOG_ERROR, "invalid or unsupported frame_type\n");
        return AVERROR(EIO);
    }
    if (packet_size > LMLM4_MAX_PACKET_SIZE || packet_size<=8) {
        av_log(s, AV_LOG_ERROR, "packet size %d is invalid\n", packet_size);
        return AVERROR(EIO);
    }

    if ((ret = av_get_packet(pb, pkt, frame_size)) <= 0)
        return AVERROR(EIO);

    avio_skip(pb, padding);

    switch (frame_type) {
    case 130:
        pkt->flags = AV_PKT_FLAG_KEY;
    case 128:
    case 131:
        pkt->stream_index = 0;
        break;
    case 129:
        pkt->stream_index = 1;
        break;
    }

    return ret;
}
