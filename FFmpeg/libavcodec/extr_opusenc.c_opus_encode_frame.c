
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_16__ ;
typedef struct TYPE_23__ TYPE_13__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_28__ {int frame_number; TYPE_2__* priv_data; } ;
struct TYPE_27__ {int duration; int pts; } ;
struct TYPE_21__ {int frames; int framesize; } ;
struct TYPE_24__ {int remaining_samples; } ;
struct TYPE_23__ {int available; } ;
struct TYPE_26__ {TYPE_10__ packet; TYPE_16__ afq; int * rc; TYPE_11__* frame; int psyctx; TYPE_13__ bufqueue; TYPE_1__* avctx; } ;
struct TYPE_25__ {int frame_size; } ;
struct TYPE_22__ {int framebits; } ;
typedef TYPE_2__ OpusEncContext ;
typedef TYPE_3__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_PKT_DATA_SKIP_SAMPLES ;
 int AV_WL32 (int *,int) ;
 int ENOMEM ;
 int OPUS_BLOCK_SIZE (int ) ;
 int * av_frame_clone (int const*) ;
 int * av_packet_new_side_data (TYPE_3__*,int ,int) ;
 int celt_encode_frame (TYPE_2__*,int *,TYPE_11__*,int) ;
 int ff_af_queue_add (TYPE_16__*,int const*) ;
 int ff_af_queue_remove (TYPE_16__*,int,int *,int*) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_3__*,int,int ) ;
 int ff_bufqueue_add (TYPE_4__*,TYPE_13__*,int *) ;
 int ff_opus_psy_postencode_update (int *,TYPE_11__*,int *) ;
 scalar_t__ ff_opus_psy_process (int *,TYPE_10__*) ;
 int ff_opus_psy_signal_eof (int *) ;
 int opus_packet_assembler (TYPE_2__*,TYPE_3__*) ;
 int * spawn_empty_frame (TYPE_2__*) ;

__attribute__((used)) static int opus_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                             const AVFrame *frame, int *got_packet_ptr)
{
    OpusEncContext *s = avctx->priv_data;
    int ret, frame_size, alloc_size = 0;

    if (frame) {
        if ((ret = ff_af_queue_add(&s->afq, frame)) < 0)
            return ret;
        ff_bufqueue_add(avctx, &s->bufqueue, av_frame_clone(frame));
    } else {
        ff_opus_psy_signal_eof(&s->psyctx);
        if (!s->afq.remaining_samples || !avctx->frame_number)
            return 0;
    }


    if (ff_opus_psy_process(&s->psyctx, &s->packet))
        return 0;

    frame_size = OPUS_BLOCK_SIZE(s->packet.framesize);

    if (!frame) {

        int pad_empty = s->packet.frames*(frame_size/s->avctx->frame_size) - s->bufqueue.available + 1;




        for (int i = 0; i < pad_empty; i++) {
            AVFrame *empty = spawn_empty_frame(s);
            if (!empty)
                return AVERROR(ENOMEM);
            ff_bufqueue_add(avctx, &s->bufqueue, empty);
        }
    }

    for (int i = 0; i < s->packet.frames; i++) {
        celt_encode_frame(s, &s->rc[i], &s->frame[i], i);
        alloc_size += s->frame[i].framebits >> 3;
    }


    alloc_size += 2 + s->packet.frames*2;

    if ((ret = ff_alloc_packet2(avctx, avpkt, alloc_size, 0)) < 0)
        return ret;


    opus_packet_assembler(s, avpkt);


    ff_opus_psy_postencode_update(&s->psyctx, s->frame, s->rc);


    ff_af_queue_remove(&s->afq, s->packet.frames*frame_size, &avpkt->pts, &avpkt->duration);
    if (s->packet.frames*frame_size > avpkt->duration) {
        uint8_t *side = av_packet_new_side_data(avpkt, AV_PKT_DATA_SKIP_SAMPLES, 10);
        if (!side)
            return AVERROR(ENOMEM);
        AV_WL32(&side[4], s->packet.frames*frame_size - avpkt->duration + 120);
    }

    *got_packet_ptr = 1;

    return 0;
}
