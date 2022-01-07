
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int frame_len; int ** frame_out; TYPE_4__* avctx; scalar_t__ block_pos; scalar_t__ block_num; int frame_count; } ;
typedef TYPE_1__ WMACodecContext ;
struct TYPE_7__ {int channels; } ;


 int dump_floats (TYPE_1__*,char*,int,float*,int) ;
 int ff_tlog (TYPE_4__*,char*,int ,int) ;
 int memcpy (float*,int *,int) ;
 int memmove (int *,int *,int) ;
 int wma_decode_block (TYPE_1__*) ;

__attribute__((used)) static int wma_decode_frame(WMACodecContext *s, float **samples,
                            int samples_offset)
{
    int ret, ch;







    s->block_num = 0;
    s->block_pos = 0;
    for (;;) {
        ret = wma_decode_block(s);
        if (ret < 0)
            return -1;
        if (ret)
            break;
    }

    for (ch = 0; ch < s->avctx->channels; ch++) {

        memcpy(samples[ch] + samples_offset, s->frame_out[ch],
               s->frame_len * sizeof(*s->frame_out[ch]));

        memmove(&s->frame_out[ch][0], &s->frame_out[ch][s->frame_len],
                s->frame_len * sizeof(*s->frame_out[ch]));





    }

    return 0;
}
