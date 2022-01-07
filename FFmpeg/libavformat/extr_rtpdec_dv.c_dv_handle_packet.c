
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {scalar_t__ timestamp; scalar_t__ buf; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef int AVPacket ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int RTP_FLAG_MARKER ;
 int av_log (int *,int ,char*,int) ;
 int avio_open_dyn_buf (scalar_t__*) ;
 int avio_write (scalar_t__,int const*,int) ;
 int ff_rtp_finalize_packet (int *,scalar_t__*,int ) ;
 int ffio_free_dyn_buf (scalar_t__*) ;

__attribute__((used)) static int dv_handle_packet(AVFormatContext *ctx, PayloadContext *rtp_dv_ctx,
                            AVStream *st, AVPacket *pkt, uint32_t *timestamp,
                            const uint8_t *buf, int len, uint16_t seq,
                            int flags)
{
    int res = 0;


    if (rtp_dv_ctx->buf && rtp_dv_ctx->timestamp != *timestamp) {
        ffio_free_dyn_buf(&rtp_dv_ctx->buf);
    }


    if (len < 1) {
        av_log(ctx, AV_LOG_ERROR, "Too short RTP/DV packet, got %d bytes\n", len);
        return AVERROR_INVALIDDATA;
    }


    if (!rtp_dv_ctx->buf) {
        res = avio_open_dyn_buf(&rtp_dv_ctx->buf);
        if (res < 0)
            return res;

        rtp_dv_ctx->timestamp = *timestamp;
    }


    avio_write(rtp_dv_ctx->buf, buf, len);



    if (!(flags & RTP_FLAG_MARKER))
        return AVERROR(EAGAIN);


    res = ff_rtp_finalize_packet(pkt, &rtp_dv_ctx->buf, st->index);
    if (res < 0)
        return res;

    return 0;
}
