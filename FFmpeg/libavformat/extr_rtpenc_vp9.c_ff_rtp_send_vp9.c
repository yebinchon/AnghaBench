
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int* buf_ptr; int* buf; scalar_t__ max_payload_size; int cur_timestamp; int timestamp; } ;
typedef TYPE_1__ RTPMuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int FFMIN (int,scalar_t__) ;
 scalar_t__ RTP_VP9_DESC_REQUIRED_SIZE ;
 int ff_rtp_send_data (TYPE_2__*,int*,scalar_t__,int) ;
 int memcpy (int*,int const*,int) ;

void ff_rtp_send_vp9(AVFormatContext *ctx, const uint8_t *buf, int size)
{
    RTPMuxContext *rtp_ctx = ctx->priv_data;
    int len;

    rtp_ctx->timestamp = rtp_ctx->cur_timestamp;
    rtp_ctx->buf_ptr = rtp_ctx->buf;


    *rtp_ctx->buf_ptr++ = 0x08;

    while (size > 0) {
        len = FFMIN(size, rtp_ctx->max_payload_size - RTP_VP9_DESC_REQUIRED_SIZE);

        if (len == size) {

            rtp_ctx->buf[0] |= 0x04;
        }

        memcpy(rtp_ctx->buf_ptr, buf, len);
        ff_rtp_send_data(ctx, rtp_ctx->buf, len + RTP_VP9_DESC_REQUIRED_SIZE, size == len);

        size -= len;
        buf += len;


        rtp_ctx->buf[0] &= ~0x08;
    }
}
