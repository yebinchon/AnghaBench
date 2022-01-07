
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint64_t ;
typedef int nuv_frametype ;
struct TYPE_13__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_12__ {int stream_index; void* pts; void* pos; int flags; int data; } ;
struct TYPE_11__ {int a_id; int v_id; scalar_t__ rtjpg_video; } ;
typedef TYPE_1__ NUVContext ;
typedef TYPE_2__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_PKT_FLAG_KEY ;
 void* AV_RL32 (int*) ;
 int EIO ;
 int HDRSIZE ;




 int PKTSIZE (void*) ;
 int av_get_packet (int *,TYPE_2__*,int) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int av_new_packet (TYPE_2__*,int) ;
 int av_packet_unref (TYPE_2__*) ;
 int av_shrink_packet (TYPE_2__*,int) ;
 int avio_feof (int *) ;
 int avio_read (int *,int*,int) ;
 int avio_skip (int *,int) ;
 void* avio_tell (int *) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static int nuv_packet(AVFormatContext *s, AVPacket *pkt)
{
    NUVContext *ctx = s->priv_data;
    AVIOContext *pb = s->pb;
    uint8_t hdr[HDRSIZE];
    nuv_frametype frametype;
    int ret, size;

    while (!avio_feof(pb)) {
        int copyhdrsize = ctx->rtjpg_video ? HDRSIZE : 0;
        uint64_t pos = avio_tell(pb);

        ret = avio_read(pb, hdr, HDRSIZE);
        if (ret < HDRSIZE)
            return ret < 0 ? ret : AVERROR(EIO);

        frametype = hdr[0];
        size = PKTSIZE(AV_RL32(&hdr[8]));

        switch (frametype) {
        case 130:
            if (!ctx->rtjpg_video) {
                avio_skip(pb, size);
                break;
            }
        case 128:
            if (ctx->v_id < 0) {
                av_log(s, AV_LOG_ERROR, "Video packet in file without video stream!\n");
                avio_skip(pb, size);
                break;
            }
            ret = av_new_packet(pkt, copyhdrsize + size);
            if (ret < 0)
                return ret;

            pkt->pos = pos;
            pkt->flags |= hdr[2] == 0 ? AV_PKT_FLAG_KEY : 0;
            pkt->pts = AV_RL32(&hdr[4]);
            pkt->stream_index = ctx->v_id;
            memcpy(pkt->data, hdr, copyhdrsize);
            ret = avio_read(pb, pkt->data + copyhdrsize, size);
            if (ret < 0) {
                av_packet_unref(pkt);
                return ret;
            }
            if (ret < size)
                av_shrink_packet(pkt, copyhdrsize + ret);
            return 0;
        case 131:
            if (ctx->a_id < 0) {
                av_log(s, AV_LOG_ERROR, "Audio packet in file without audio stream!\n");
                avio_skip(pb, size);
                break;
            }
            ret = av_get_packet(pb, pkt, size);
            pkt->flags |= AV_PKT_FLAG_KEY;
            pkt->pos = pos;
            pkt->pts = AV_RL32(&hdr[4]);
            pkt->stream_index = ctx->a_id;
            if (ret < 0)
                return ret;
            return 0;
        case 129:

            break;
        default:
            avio_skip(pb, size);
            break;
        }
    }

    return AVERROR(EIO);
}
