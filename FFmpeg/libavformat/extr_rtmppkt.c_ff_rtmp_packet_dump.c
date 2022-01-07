
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ type; int size; int * data; int extra; int timestamp; int channel_id; } ;
typedef TYPE_1__ RTMPPacket ;


 int AV_LOG_DEBUG ;
 int AV_RB32 (int *) ;
 scalar_t__ RTMP_PT_AUDIO ;
 scalar_t__ RTMP_PT_INVOKE ;
 scalar_t__ RTMP_PT_METADATA ;
 scalar_t__ RTMP_PT_NOTIFY ;
 scalar_t__ RTMP_PT_SET_PEER_BW ;
 scalar_t__ RTMP_PT_VIDEO ;
 scalar_t__ RTMP_PT_WINDOW_ACK_SIZE ;
 int amf_tag_contents (void*,int *,int *) ;
 int av_log (void*,int ,char*,...) ;
 int ff_amf_tag_size (int *,int *) ;
 int rtmp_packet_type (scalar_t__) ;

void ff_rtmp_packet_dump(void *ctx, RTMPPacket *p)
{
    av_log(ctx, AV_LOG_DEBUG, "RTMP packet type '%s'(%d) for channel %d, timestamp %d, extra field %d size %d\n",
           rtmp_packet_type(p->type), p->type, p->channel_id, p->timestamp, p->extra, p->size);
    if (p->type == RTMP_PT_INVOKE || p->type == RTMP_PT_NOTIFY) {
        uint8_t *src = p->data, *src_end = p->data + p->size;
        while (src < src_end) {
            int sz;
            amf_tag_contents(ctx, src, src_end);
            sz = ff_amf_tag_size(src, src_end);
            if (sz < 0)
                break;
            src += sz;
        }
    } else if (p->type == RTMP_PT_WINDOW_ACK_SIZE) {
        av_log(ctx, AV_LOG_DEBUG, "Window acknowledgement size = %d\n", AV_RB32(p->data));
    } else if (p->type == RTMP_PT_SET_PEER_BW) {
        av_log(ctx, AV_LOG_DEBUG, "Set Peer BW = %d\n", AV_RB32(p->data));
    } else if (p->type != RTMP_PT_AUDIO && p->type != RTMP_PT_VIDEO && p->type != RTMP_PT_METADATA) {
        int i;
        for (i = 0; i < p->size; i++)
            av_log(ctx, AV_LOG_DEBUG, " %02X", p->data[i]);
        av_log(ctx, AV_LOG_DEBUG, "\n");
    }
}
