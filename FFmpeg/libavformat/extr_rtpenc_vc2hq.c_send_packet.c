
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int * buf; } ;
typedef TYPE_1__ RTPMuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int AV_WB16 (int *,int ) ;
 int AV_WB8 (int *,int) ;
 scalar_t__ RTP_VC2HQ_PL_HEADER_SIZE ;
 int ff_rtp_send_data (TYPE_2__*,int *,scalar_t__,int) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static void send_packet(AVFormatContext *ctx, uint8_t parse_code, int info_hdr_size, const uint8_t *buf, int size, int i, int f, int rtp_m)
{
    RTPMuxContext *rtp_ctx = ctx->priv_data;

    AV_WB16(&rtp_ctx->buf[0], 0);
    AV_WB8 (&rtp_ctx->buf[2], i ? (f ? (0x03) : (0x02)) : 0x00);
    AV_WB8 (&rtp_ctx->buf[3], parse_code);
    if (size > 0)
        memcpy(&rtp_ctx->buf[4 + info_hdr_size], buf, size);
    ff_rtp_send_data(ctx, rtp_ctx->buf, RTP_VC2HQ_PL_HEADER_SIZE + info_hdr_size + size, rtp_m);
}
