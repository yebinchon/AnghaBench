
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int packet_loss; int max_frame_size; int frame_data; int pb; TYPE_2__* frame; TYPE_1__** cdlms; scalar_t__ next_packet_start; scalar_t__ frame_offset; scalar_t__ num_saved_bits; scalar_t__ packet_done; } ;
typedef TYPE_3__ WmallDecodeCtx ;
struct TYPE_9__ {TYPE_3__* priv_data; } ;
struct TYPE_7__ {scalar_t__ nb_samples; } ;
struct TYPE_6__ {scalar_t__ order; } ;
typedef TYPE_4__ AVCodecContext ;


 int init_put_bits (int *,int ,int ) ;

__attribute__((used)) static void flush(AVCodecContext *avctx)
{
    WmallDecodeCtx *s = avctx->priv_data;
    s->packet_loss = 1;
    s->packet_done = 0;
    s->num_saved_bits = 0;
    s->frame_offset = 0;
    s->next_packet_start = 0;
    s->cdlms[0][0].order = 0;
    s->frame->nb_samples = 0;
    init_put_bits(&s->pb, s->frame_data, s->max_frame_size);
}
