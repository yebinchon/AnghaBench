
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {int stream_index; int data; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_9__ {scalar_t__ seen_sequence_header; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;


 int DIRAC_DATA_UNIT_HEADER_SIZE ;
 int av_new_packet (TYPE_3__*,int ) ;
 int fill_parse_info_header (TYPE_1__*,int ,int,int ) ;

__attribute__((used)) static int vc2hq_mark_end_of_sequence(PayloadContext *pl_ctx, AVStream *st, AVPacket *pkt)
{
    int res;
    uint32_t size = 0;


    if ((res = av_new_packet(pkt, DIRAC_DATA_UNIT_HEADER_SIZE)) < 0)
        return res;

    fill_parse_info_header(pl_ctx, pkt->data, 0x10, size);
    pkt->stream_index = st->index;

    pl_ctx->seen_sequence_header = 0;

    return 0;
}
