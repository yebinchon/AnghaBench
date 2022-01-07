
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_11__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {scalar_t__ dts; scalar_t__ size; struct TYPE_9__* next; } ;
struct TYPE_8__ {scalar_t__ buffer_index; TYPE_2__* predecode_packet; TYPE_2__* premux_packet; } ;
typedef TYPE_1__ StreamInfo ;
typedef TYPE_2__ PacketDesc ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AV_LOG_ERROR ;
 int av_freep (TYPE_2__**) ;
 int av_log (TYPE_4__*,int ,char*,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static int remove_decoded_packets(AVFormatContext *ctx, int64_t scr)
{
    int i;

    for (i = 0; i < ctx->nb_streams; i++) {
        AVStream *st = ctx->streams[i];
        StreamInfo *stream = st->priv_data;
        PacketDesc *pkt_desc;

        while ((pkt_desc = stream->predecode_packet) &&
               scr > pkt_desc->dts) {
            if (stream->buffer_index < pkt_desc->size ||
                stream->predecode_packet == stream->premux_packet) {
                av_log(ctx, AV_LOG_ERROR,
                       "buffer underflow st=%d bufi=%d size=%d\n",
                       i, stream->buffer_index, pkt_desc->size);
                break;
            }
            stream->buffer_index -= pkt_desc->size;
            stream->predecode_packet = pkt_desc->next;
            av_freep(&pkt_desc);
        }
    }

    return 0;
}
