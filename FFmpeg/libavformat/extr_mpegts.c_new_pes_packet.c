
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {scalar_t__ data; scalar_t__ size; int flags; int pos; int dts; int pts; int stream_index; TYPE_3__* buf; } ;
struct TYPE_14__ {scalar_t__ data_index; scalar_t__ total_size; scalar_t__ pes_header_size; int stream_type; int extended_stream_id; int stream_id; TYPE_3__* buffer; int flags; int ts_packet_pos; int dts; int pts; TYPE_2__* st; TYPE_1__* sub_st; int stream; } ;
struct TYPE_13__ {scalar_t__ data; } ;
struct TYPE_12__ {int index; } ;
struct TYPE_11__ {int index; } ;
typedef TYPE_4__ PESContext ;
typedef TYPE_5__ AVPacket ;


 int AVERROR (int ) ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_WARNING ;
 int AV_PKT_DATA_MPEGTS_STREAM_ID ;
 int AV_PKT_FLAG_CORRUPT ;
 int ENOMEM ;
 scalar_t__ MAX_PES_PAYLOAD ;
 scalar_t__ PES_START_SIZE ;
 int av_init_packet (TYPE_5__*) ;
 int av_log (int ,int ,char*) ;
 int * av_packet_new_side_data (TYPE_5__*,int ,int) ;
 int memset (scalar_t__,int ,int ) ;
 int reset_pes_packet_state (TYPE_4__*) ;

__attribute__((used)) static int new_pes_packet(PESContext *pes, AVPacket *pkt)
{
    uint8_t *sd;

    av_init_packet(pkt);

    pkt->buf = pes->buffer;
    pkt->data = pes->buffer->data;
    pkt->size = pes->data_index;

    if (pes->total_size != MAX_PES_PAYLOAD &&
        pes->pes_header_size + pes->data_index != pes->total_size +
        PES_START_SIZE) {
        av_log(pes->stream, AV_LOG_WARNING, "PES packet size mismatch\n");
        pes->flags |= AV_PKT_FLAG_CORRUPT;
    }
    memset(pkt->data + pkt->size, 0, AV_INPUT_BUFFER_PADDING_SIZE);


    if (pes->sub_st && pes->stream_type == 0x83 && pes->extended_stream_id == 0x76)
        pkt->stream_index = pes->sub_st->index;
    else
        pkt->stream_index = pes->st->index;
    pkt->pts = pes->pts;
    pkt->dts = pes->dts;

    pkt->pos = pes->ts_packet_pos;
    pkt->flags = pes->flags;

    pes->buffer = ((void*)0);
    reset_pes_packet_state(pes);

    sd = av_packet_new_side_data(pkt, AV_PKT_DATA_MPEGTS_STREAM_ID, 1);
    if (!sd)
        return AVERROR(ENOMEM);
    *sd = pes->stream_id;

    return 0;
}
