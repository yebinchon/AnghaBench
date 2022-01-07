
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int num_x; int thread_buf_size; int * thread_buf; } ;
typedef int DiracSlice ;
typedef TYPE_1__ DiracContext ;
typedef TYPE_2__ AVCodecContext ;


 int decode_hq_slice (TYPE_1__*,int *,int *) ;

__attribute__((used)) static int decode_hq_slice_row(AVCodecContext *avctx, void *arg, int jobnr, int threadnr)
{
    int i;
    DiracContext *s = avctx->priv_data;
    DiracSlice *slices = ((DiracSlice *)arg) + s->num_x*jobnr;
    uint8_t *thread_buf = &s->thread_buf[s->thread_buf_size*threadnr];
    for (i = 0; i < s->num_x; i++)
        decode_hq_slice(s, &slices[i], thread_buf);
    return 0;
}
