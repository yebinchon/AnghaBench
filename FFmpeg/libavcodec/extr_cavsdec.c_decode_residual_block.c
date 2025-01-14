
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int uint8_t ;
struct dec_2dvlc {int golomb_order; unsigned int max_run; int* level_add; int inc_limit; int** rltab; } ;
typedef int ptrdiff_t ;
typedef int int16_t ;
struct TYPE_7__ {int (* clear_block ) (int*) ;} ;
struct TYPE_6__ {int (* cavs_idct8_add ) (unsigned int*,int*,int ) ;} ;
struct TYPE_8__ {int* block; TYPE_2__ bdsp; TYPE_1__ cdsp; int avctx; } ;
typedef int GetBitContext ;
typedef TYPE_3__ AVSContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 unsigned int ESCAPE_CODE ;
 int av_log (int ,int ,char*,...) ;
 int dequant (TYPE_3__*,int*,unsigned int*,int*,int ,int ,int) ;
 int * dequant_mul ;
 int * dequant_shift ;
 void* get_ue_code (int *,int) ;
 int stub1 (unsigned int*,int*,int ) ;
 int stub2 (int*) ;

__attribute__((used)) static int decode_residual_block(AVSContext *h, GetBitContext *gb,
                                 const struct dec_2dvlc *r, int esc_golomb_order,
                                 int qp, uint8_t *dst, ptrdiff_t stride)
{
    int i, esc_code, level, mask, ret;
    unsigned int level_code, run;
    int16_t level_buf[65];
    uint8_t run_buf[65];
    int16_t *block = h->block;

    for (i = 0; i < 65; i++) {
        level_code = get_ue_code(gb, r->golomb_order);
        if (level_code >= ESCAPE_CODE) {
            run = ((level_code - ESCAPE_CODE) >> 1) + 1;
            if(run > 64) {
                av_log(h->avctx, AV_LOG_ERROR, "run %d is too large\n", run);
                return AVERROR_INVALIDDATA;
            }
            esc_code = get_ue_code(gb, esc_golomb_order);
            if (esc_code < 0 || esc_code > 32767) {
                av_log(h->avctx, AV_LOG_ERROR, "esc_code invalid\n");
                return AVERROR_INVALIDDATA;
            }

            level = esc_code + (run > r->max_run ? 1 : r->level_add[run]);
            while (level > r->inc_limit)
                r++;
            mask = -(level_code & 1);
            level = (level ^ mask) - mask;
        } else {
            level = r->rltab[level_code][0];
            if (!level)
                break;
            run = r->rltab[level_code][1];
            r += r->rltab[level_code][2];
        }
        level_buf[i] = level;
        run_buf[i] = run;
    }
    if ((ret = dequant(h, level_buf, run_buf, block, dequant_mul[qp],
                      dequant_shift[qp], i)) < 0)
        return ret;
    h->cdsp.cavs_idct8_add(dst, block, stride);
    h->bdsp.clear_block(block);
    return 0;
}
