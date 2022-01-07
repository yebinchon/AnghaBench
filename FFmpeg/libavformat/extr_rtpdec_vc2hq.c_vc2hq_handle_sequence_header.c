
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_11__ {int stream_index; scalar_t__ data; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_9__ {int seen_sequence_header; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;


 scalar_t__ DIRAC_DATA_UNIT_HEADER_SIZE ;
 int av_new_packet (TYPE_3__*,scalar_t__) ;
 int fill_parse_info_header (TYPE_1__*,scalar_t__,int,scalar_t__) ;
 int memcpy (scalar_t__,int const*,int) ;

__attribute__((used)) static int vc2hq_handle_sequence_header(PayloadContext *pl_ctx, AVStream *st, AVPacket *pkt,
                                        const uint8_t *buf, int len)
{
    int res;
    uint32_t size = DIRAC_DATA_UNIT_HEADER_SIZE + len;

    if ((res = av_new_packet(pkt, DIRAC_DATA_UNIT_HEADER_SIZE + len)) < 0)
        return res;

    fill_parse_info_header(pl_ctx, pkt->data, 0x00, size);

    memcpy(pkt->data + DIRAC_DATA_UNIT_HEADER_SIZE, buf, len);
    pkt->stream_index = st->index;

    pl_ctx->seen_sequence_header = 1;

    return 0;
}
