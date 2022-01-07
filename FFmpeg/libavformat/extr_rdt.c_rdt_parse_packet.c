
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_18__ {int pb; } ;
struct TYPE_17__ {size_t stream_index; int pts; } ;
struct TYPE_16__ {size_t index; TYPE_1__* codecpar; } ;
struct TYPE_15__ {scalar_t__ audio_pkt_cnt; TYPE_8__* rmctx; int * rmst; int buffer; } ;
struct TYPE_14__ {scalar_t__ codec_id; } ;
typedef TYPE_2__ PayloadContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 scalar_t__ AV_CODEC_ID_AAC ;
 int RTP_FLAG_KEY ;
 int avio_alloc_context (int ,int,int ,int *,int *,int *,int *) ;
 int avio_context_free (int *) ;
 int avio_tell (int *) ;
 int ff_rm_parse_packet (TYPE_8__*,int *,TYPE_3__*,int ,int,TYPE_4__*,int*,int,int ) ;
 scalar_t__ ff_rm_retrieve_cache (TYPE_8__*,int ,TYPE_3__*,int ,TYPE_4__*) ;
 int ffio_init_context (int *,int *,int,int ,int *,int *,int *,int *) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int
rdt_parse_packet (AVFormatContext *ctx, PayloadContext *rdt, AVStream *st,
                  AVPacket *pkt, uint32_t *timestamp,
                  const uint8_t *buf, int len, uint16_t rtp_seq, int flags)
{
    int seq = 1, res;
    AVIOContext pb;

    if (rdt->audio_pkt_cnt == 0) {
        int pos, rmflags;

        ffio_init_context(&pb, (uint8_t *)buf, len, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        rmflags = (flags & RTP_FLAG_KEY) ? 2 : 0;
        res = ff_rm_parse_packet (rdt->rmctx, &pb, st, rdt->rmst[st->index], len, pkt,
                                  &seq, rmflags, *timestamp);
        pos = avio_tell(&pb);
        if (res < 0)
            return res;
        if (res > 0) {
            if (st->codecpar->codec_id == AV_CODEC_ID_AAC) {
                memcpy (rdt->buffer, buf + pos, len - pos);
                rdt->rmctx->pb = avio_alloc_context (rdt->buffer, len - pos, 0,
                                                    ((void*)0), ((void*)0), ((void*)0), ((void*)0));
            }
            goto get_cache;
        }
    } else {
get_cache:
        rdt->audio_pkt_cnt =
            ff_rm_retrieve_cache (rdt->rmctx, rdt->rmctx->pb,
                                  st, rdt->rmst[st->index], pkt);
        if (rdt->audio_pkt_cnt == 0 &&
            st->codecpar->codec_id == AV_CODEC_ID_AAC)
            avio_context_free(&rdt->rmctx->pb);
    }
    pkt->stream_index = st->index;
    pkt->pts = *timestamp;

    return rdt->audio_pkt_cnt > 0;
}
