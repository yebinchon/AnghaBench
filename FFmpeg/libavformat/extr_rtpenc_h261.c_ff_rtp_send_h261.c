
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int* buf; scalar_t__ max_payload_size; int cur_timestamp; int timestamp; } ;
typedef TYPE_1__ RTPMuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int AV_LOG_WARNING ;
 int FFMIN (scalar_t__,int) ;
 size_t RTP_H261_HEADER_SIZE ;
 int av_log (TYPE_2__*,int ,char*) ;
 int ff_rtp_send_data (TYPE_2__*,int*,size_t,int) ;
 int* find_resync_marker_reverse (int const*,int const*) ;
 int memcpy (int*,int const*,int) ;

void ff_rtp_send_h261(AVFormatContext *ctx, const uint8_t *frame_buf, int frame_size)
{
    int cur_frame_size;
    int last_packet_of_frame;
    RTPMuxContext *rtp_ctx = ctx->priv_data;


    rtp_ctx->timestamp = rtp_ctx->cur_timestamp;


    while (frame_size > 0) {
        rtp_ctx->buf[0] = 1;
        rtp_ctx->buf[1] = 0;
        rtp_ctx->buf[2] = 0;
        rtp_ctx->buf[3] = 0;
        if (frame_size < 2 || frame_buf[0] != 0 || frame_buf[1] != 1) {




            av_log(ctx, AV_LOG_WARNING,
                   "RTP/H.261 packet not cut at a GOB boundary, not signaled correctly\n");
        }

        cur_frame_size = FFMIN(rtp_ctx->max_payload_size - RTP_H261_HEADER_SIZE, frame_size);


        if (cur_frame_size < frame_size) {
            const uint8_t *packet_end = find_resync_marker_reverse(frame_buf,
                                                                   frame_buf + cur_frame_size);
            cur_frame_size = packet_end - frame_buf;
        }


        last_packet_of_frame = cur_frame_size == frame_size;


        memcpy(&rtp_ctx->buf[RTP_H261_HEADER_SIZE], frame_buf, cur_frame_size);
        ff_rtp_send_data(ctx, rtp_ctx->buf, RTP_H261_HEADER_SIZE + cur_frame_size, last_packet_of_frame);

        frame_buf += cur_frame_size;
        frame_size -= cur_frame_size;
    }
}
