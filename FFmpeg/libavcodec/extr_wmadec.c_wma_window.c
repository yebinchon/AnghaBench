
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {float* output; scalar_t__ block_len_bits; scalar_t__ prev_block_len_bits; int block_len; int frame_len_bits; scalar_t__ next_block_len_bits; int * windows; TYPE_1__* fdsp; } ;
typedef TYPE_2__ WMACodecContext ;
struct TYPE_4__ {int (* vector_fmul_reverse ) (float*,float*,int ,int) ;int (* vector_fmul_add ) (float*,float*,int ,float*,int) ;} ;


 int memcpy (float*,float*,int) ;
 int memset (float*,int ,int) ;
 int stub1 (float*,float*,int ,float*,int) ;
 int stub2 (float*,float*,int ,float*,int) ;
 int stub3 (float*,float*,int ,int) ;
 int stub4 (float*,float*,int ,int) ;

__attribute__((used)) static void wma_window(WMACodecContext *s, float *out)
{
    float *in = s->output;
    int block_len, bsize, n;


    if (s->block_len_bits <= s->prev_block_len_bits) {
        block_len = s->block_len;
        bsize = s->frame_len_bits - s->block_len_bits;

        s->fdsp->vector_fmul_add(out, in, s->windows[bsize],
                                out, block_len);
    } else {
        block_len = 1 << s->prev_block_len_bits;
        n = (s->block_len - block_len) / 2;
        bsize = s->frame_len_bits - s->prev_block_len_bits;

        s->fdsp->vector_fmul_add(out + n, in + n, s->windows[bsize],
                                out + n, block_len);

        memcpy(out + n + block_len, in + n + block_len, n * sizeof(float));
    }

    out += s->block_len;
    in += s->block_len;


    if (s->block_len_bits <= s->next_block_len_bits) {
        block_len = s->block_len;
        bsize = s->frame_len_bits - s->block_len_bits;

        s->fdsp->vector_fmul_reverse(out, in, s->windows[bsize], block_len);
    } else {
        block_len = 1 << s->next_block_len_bits;
        n = (s->block_len - block_len) / 2;
        bsize = s->frame_len_bits - s->next_block_len_bits;

        memcpy(out, in, n * sizeof(float));

        s->fdsp->vector_fmul_reverse(out + n, in + n, s->windows[bsize],
                                    block_len);

        memset(out + n + block_len, 0, n * sizeof(float));
    }
}
