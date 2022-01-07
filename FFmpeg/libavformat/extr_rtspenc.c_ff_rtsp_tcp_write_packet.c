
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_7__ {int rtsp_hd_out; } ;
struct TYPE_6__ {int interleaved_max; int interleaved_min; TYPE_3__* transport_priv; } ;
typedef TYPE_1__ RTSPStream ;
typedef TYPE_2__ RTSPState ;
typedef TYPE_3__ AVFormatContext ;


 int AV_RB32 (char*) ;
 int AV_WB16 (char*,int) ;
 scalar_t__ RTP_PT_IS_RTCP (char) ;
 int RTSP_TCP_MAX_PACKET_SIZE ;
 int av_free (char*) ;
 int avio_close_dyn_buf (int *,char**) ;
 int ffio_open_dyn_packet_buf (int **,int ) ;
 int ffurl_write (int ,char*,int) ;

int ff_rtsp_tcp_write_packet(AVFormatContext *s, RTSPStream *rtsp_st)
{
    RTSPState *rt = s->priv_data;
    AVFormatContext *rtpctx = rtsp_st->transport_priv;
    uint8_t *buf, *ptr;
    int size;
    uint8_t *interleave_header, *interleaved_packet;

    size = avio_close_dyn_buf(rtpctx->pb, &buf);
    rtpctx->pb = ((void*)0);
    ptr = buf;
    while (size > 4) {
        uint32_t packet_len = AV_RB32(ptr);
        int id;





        interleaved_packet = interleave_header = ptr;
        ptr += 4;
        size -= 4;
        if (packet_len > size || packet_len < 2)
            break;
        if (RTP_PT_IS_RTCP(ptr[1]))
            id = rtsp_st->interleaved_max;
        else
            id = rtsp_st->interleaved_min;
        interleave_header[0] = '$';
        interleave_header[1] = id;
        AV_WB16(interleave_header + 2, packet_len);
        ffurl_write(rt->rtsp_hd_out, interleaved_packet, 4 + packet_len);
        ptr += packet_len;
        size -= packet_len;
    }
    av_free(buf);
    return ffio_open_dyn_packet_buf(&rtpctx->pb, RTSP_TCP_MAX_PACKET_SIZE);
}
