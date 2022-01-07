
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_14__ {TYPE_8__* frame; TYPE_2__** output_element; TYPE_3__*** che; } ;
struct TYPE_13__ {int channels; TYPE_5__* priv_data; } ;
struct TYPE_12__ {TYPE_1__* ch; } ;
struct TYPE_11__ {int * ret; } ;
struct TYPE_10__ {int ret_buf; int ret; } ;
typedef int INTFLOAT ;
typedef TYPE_3__ ChannelElement ;
typedef TYPE_4__ AVCodecContext ;
typedef TYPE_5__ AACContext ;


 int MAX_ELEM_ID ;
 int av_frame_unref (TYPE_8__*) ;
 int ff_get_buffer (TYPE_4__*,TYPE_8__*,int ) ;

__attribute__((used)) static int frame_configure_elements(AVCodecContext *avctx)
{
    AACContext *ac = avctx->priv_data;
    int type, id, ch, ret;


    for (type = 0; type < 4; type++) {
        for (id = 0; id < MAX_ELEM_ID; id++) {
            ChannelElement *che = ac->che[type][id];
            if (che) {
                che->ch[0].ret = che->ch[0].ret_buf;
                che->ch[1].ret = che->ch[1].ret_buf;
            }
        }
    }


    av_frame_unref(ac->frame);
    if (!avctx->channels)
        return 1;

    ac->frame->nb_samples = 2048;
    if ((ret = ff_get_buffer(avctx, ac->frame, 0)) < 0)
        return ret;


    for (ch = 0; ch < avctx->channels; ch++) {
        if (ac->output_element[ch])
            ac->output_element[ch]->ret = (INTFLOAT *)ac->frame->extended_data[ch];
    }

    return 0;
}
