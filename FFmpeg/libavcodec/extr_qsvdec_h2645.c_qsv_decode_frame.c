
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int input_ref ;
struct TYPE_17__ {scalar_t__ reinit_flag; } ;
struct TYPE_16__ {TYPE_1__* priv_data; } ;
struct TYPE_15__ {int size; int data; int member_0; } ;
struct TYPE_14__ {TYPE_2__ buffer_pkt; TYPE_7__ qsv; int packet_fifo; } ;
typedef TYPE_1__ QSVH2645Context ;
typedef TYPE_2__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int av_fifo_generic_read (int ,TYPE_2__*,int,int *) ;
 int av_fifo_generic_write (int ,TYPE_2__*,int,int *) ;
 int av_fifo_realloc2 (int ,int) ;
 int av_fifo_size (int ) ;
 int av_fifo_space (int ) ;
 int av_packet_ref (TYPE_2__*,TYPE_2__*) ;
 int av_packet_unref (TYPE_2__*) ;
 int ff_qsv_process_data (TYPE_3__*,TYPE_7__*,int *,int*,TYPE_2__*) ;

__attribute__((used)) static int qsv_decode_frame(AVCodecContext *avctx, void *data,
                            int *got_frame, AVPacket *avpkt)
{
    QSVH2645Context *s = avctx->priv_data;
    AVFrame *frame = data;
    int ret;


    if (avpkt->size) {
        AVPacket input_ref = { 0 };

        if (av_fifo_space(s->packet_fifo) < sizeof(input_ref)) {
            ret = av_fifo_realloc2(s->packet_fifo,
                                   av_fifo_size(s->packet_fifo) + sizeof(input_ref));
            if (ret < 0)
                return ret;
        }

        ret = av_packet_ref(&input_ref, avpkt);
        if (ret < 0)
            return ret;
        av_fifo_generic_write(s->packet_fifo, &input_ref, sizeof(input_ref), ((void*)0));
    }


    while (!*got_frame) {

        if (s->buffer_pkt.size <= 0) {

            if (av_fifo_size(s->packet_fifo) < sizeof(AVPacket))
                return avpkt->size ? avpkt->size : ff_qsv_process_data(avctx, &s->qsv, frame, got_frame, avpkt);

            if (!s->qsv.reinit_flag) {
                av_packet_unref(&s->buffer_pkt);
                av_fifo_generic_read(s->packet_fifo, &s->buffer_pkt, sizeof(s->buffer_pkt), ((void*)0));
            }
        }

        ret = ff_qsv_process_data(avctx, &s->qsv, frame, got_frame, &s->buffer_pkt);
        if (ret < 0){


            av_packet_unref(&s->buffer_pkt);
            return ret;
        }
        if (s->qsv.reinit_flag)
            continue;

        s->buffer_pkt.size -= ret;
        s->buffer_pkt.data += ret;
    }

    return avpkt->size;
}
