
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_11__ {int * data; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_9__ {scalar_t__ frame_nr; scalar_t__ frame_size; scalar_t__ buf; scalar_t__ timestamp; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 scalar_t__ AV_RB16 (int const*) ;
 scalar_t__ AV_RB32 (int const*) ;
 int AV_WB32 (int *,scalar_t__) ;
 scalar_t__ DIRAC_DATA_UNIT_HEADER_SIZE ;
 int DIRAC_PCODE_PICTURE_HQ ;
 scalar_t__ DIRAC_PIC_NR_SIZE ;
 int EAGAIN ;
 int RTP_FLAG_MARKER ;
 int SEEK_SET ;
 int av_log (int *,int ,char*,...) ;
 int avio_open_dyn_buf (scalar_t__*) ;
 int avio_seek (scalar_t__,scalar_t__,int ) ;
 int avio_write (scalar_t__,int const*,scalar_t__) ;
 int ff_rtp_finalize_packet (TYPE_3__*,scalar_t__*,int ) ;
 int ffio_free_dyn_buf (scalar_t__*) ;
 int fill_parse_info_header (TYPE_1__*,int *,int ,scalar_t__) ;

__attribute__((used)) static int vc2hq_handle_frame_fragment(AVFormatContext *ctx, PayloadContext *pl_ctx, AVStream *st,
                                       AVPacket *pkt, uint32_t *timestamp, const uint8_t *buf, int len,
                                       int flags)
{
    int res;
    uint32_t pic_nr;
    uint16_t frag_len;
    uint16_t no_slices;


    if (len < 16) {
        av_log(ctx, AV_LOG_ERROR, "Too short RTP/VC2hq packet, got %d bytes\n", len);
        return AVERROR_INVALIDDATA;
    }

    pic_nr = AV_RB32(&buf[4]);
    frag_len = AV_RB16(&buf[12]);
    no_slices = AV_RB16(&buf[14]);

    if (pl_ctx->buf && pl_ctx->frame_nr != pic_nr) {
        av_log(ctx, AV_LOG_WARNING, "Dropping buffered RTP/VC2hq packet fragments - non-continuous picture numbers\n");
        ffio_free_dyn_buf(&pl_ctx->buf);
    }


    if (no_slices == 0) {
        if (len < frag_len + 16) {
            av_log(ctx, AV_LOG_ERROR, "Too short RTP/VC2hq packet, got %d bytes\n", len);
            return AVERROR_INVALIDDATA;
        }


        if (!pl_ctx->buf) {

            res = avio_open_dyn_buf(&pl_ctx->buf);
            if (res < 0)
                return res;


            res = avio_seek(pl_ctx->buf, DIRAC_DATA_UNIT_HEADER_SIZE + DIRAC_PIC_NR_SIZE, SEEK_SET);
            if (res < 0)
                return res;

            pl_ctx->frame_nr = pic_nr;
            pl_ctx->timestamp = *timestamp;
            pl_ctx->frame_size = DIRAC_DATA_UNIT_HEADER_SIZE + DIRAC_PIC_NR_SIZE;
        }

        avio_write(pl_ctx->buf, buf + 16 , frag_len);
        pl_ctx->frame_size += frag_len;

        return AVERROR(EAGAIN);
    } else {
        if (len < frag_len + 20) {
            av_log(ctx, AV_LOG_ERROR, "Too short RTP/VC2hq packet, got %d bytes\n", len);
            return AVERROR_INVALIDDATA;
        }


        if (!pl_ctx->buf)
            return AVERROR_INVALIDDATA;

        avio_write(pl_ctx->buf, buf + 20 , frag_len);
        pl_ctx->frame_size += frag_len;



        if (!(flags & RTP_FLAG_MARKER))
            return AVERROR(EAGAIN);
    }


    res = ff_rtp_finalize_packet(pkt, &pl_ctx->buf, st->index);
    if (res < 0)
        return res;

    fill_parse_info_header(pl_ctx, pkt->data, DIRAC_PCODE_PICTURE_HQ, pl_ctx->frame_size);
    AV_WB32(&pkt->data[13], pl_ctx->frame_nr);

    pl_ctx->frame_size = 0;

    return 0;
}
