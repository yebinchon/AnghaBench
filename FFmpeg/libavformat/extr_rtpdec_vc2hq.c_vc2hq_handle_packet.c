
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ timestamp; scalar_t__ seen_sequence_header; scalar_t__ frame_size; scalar_t__ buf; } ;
typedef TYPE_1__ PayloadContext ;
typedef int AVStream ;
typedef int AVPacket ;
typedef int AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;



 int RTP_VC2HQ_PL_HEADER_SIZE ;
 int av_log (int *,int ,char*,...) ;
 int ffio_free_dyn_buf (scalar_t__*) ;
 int vc2hq_handle_frame_fragment (int *,TYPE_1__*,int *,int *,scalar_t__*,int const*,int,int) ;
 int vc2hq_handle_sequence_header (TYPE_1__*,int *,int *,int const*,int) ;
 int vc2hq_mark_end_of_sequence (TYPE_1__*,int *,int *) ;

__attribute__((used)) static int vc2hq_handle_packet(AVFormatContext *ctx, PayloadContext *pl_ctx,
                               AVStream *st, AVPacket *pkt, uint32_t *timestamp,
                               const uint8_t *buf, int len, uint16_t seq,
                               int flags)
{
    uint8_t parse_code = 0;
    int res = 0;

    if (pl_ctx->buf && pl_ctx->timestamp != *timestamp) {
        av_log(ctx, AV_LOG_WARNING, "Dropping buffered RTP/VC2hq packet fragments - non-continuous timestamps\n");
        ffio_free_dyn_buf(&pl_ctx->buf);
        pl_ctx->frame_size = 0;
    }


    if (len < RTP_VC2HQ_PL_HEADER_SIZE) {
        av_log(ctx, AV_LOG_ERROR, "Too short RTP/VC2hq packet, got %d bytes\n", len);
        return AVERROR_INVALIDDATA;
    }

    parse_code = buf[3];


    if (pl_ctx->seen_sequence_header || parse_code == 129) {
        switch(parse_code) {

        case 129:
            res = vc2hq_handle_sequence_header(pl_ctx, st, pkt, buf + RTP_VC2HQ_PL_HEADER_SIZE, len - RTP_VC2HQ_PL_HEADER_SIZE);
            break;

        case 130:
            res = vc2hq_mark_end_of_sequence(pl_ctx, st, pkt);
            break;

        case 128:
            res = vc2hq_handle_frame_fragment(ctx, pl_ctx, st, pkt, timestamp, buf, len, flags);
            break;
        }
    }

    return res;
}
