
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int bit_rate; int loop_filter; int slice_height; int mb_height; TYPE_2__* avctx; } ;
struct TYPE_8__ {int mspel_bit; int abt_flag; int j_type_bit; int top_left_mv_flag; int per_mb_rl_bit; TYPE_4__ s; } ;
typedef TYPE_3__ Wmv2Context ;
struct TYPE_6__ {int den; int num; } ;
struct TYPE_7__ {TYPE_1__ time_base; int extradata_size; int extradata; } ;
typedef int PutBitContext ;
typedef TYPE_4__ MpegEncContext ;


 int FFMIN (int,int) ;
 int flush_put_bits (int *) ;
 int init_put_bits (int *,int ,int ) ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static int encode_ext_header(Wmv2Context *w)
{
    MpegEncContext *const s = &w->s;
    PutBitContext pb;
    int code;

    init_put_bits(&pb, s->avctx->extradata, s->avctx->extradata_size);

    put_bits(&pb, 5, s->avctx->time_base.den / s->avctx->time_base.num);
    put_bits(&pb, 11, FFMIN(s->bit_rate / 1024, 2047));

    put_bits(&pb, 1, w->mspel_bit = 1);
    put_bits(&pb, 1, s->loop_filter);
    put_bits(&pb, 1, w->abt_flag = 1);
    put_bits(&pb, 1, w->j_type_bit = 1);
    put_bits(&pb, 1, w->top_left_mv_flag = 0);
    put_bits(&pb, 1, w->per_mb_rl_bit = 1);
    put_bits(&pb, 3, code = 1);

    flush_put_bits(&pb);

    s->slice_height = s->mb_height / code;

    return 0;
}
