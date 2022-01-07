
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* f; } ;
struct TYPE_7__ {int stc; int mb_height; int mby; int mbidx; int mb_width; int flags; int avctx; int pic_structure; TYPE_2__ cur; int qp; scalar_t__ qp_fixed; int pic_qp_fixed; } ;
struct TYPE_5__ {scalar_t__ pict_type; } ;
typedef int GetBitContext ;
typedef TYPE_3__ AVSContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PICTURE_TYPE_I ;
 int B_AVAIL ;
 int C_AVAIL ;
 int av_log (int ,int ,char*,...) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;

__attribute__((used)) static inline int decode_slice_header(AVSContext *h, GetBitContext *gb)
{
    if (h->stc > 0xAF)
        av_log(h->avctx, AV_LOG_ERROR, "unexpected start code 0x%02x\n", h->stc);

    if (h->stc >= h->mb_height) {
        av_log(h->avctx, AV_LOG_ERROR, "stc 0x%02x is too large\n", h->stc);
        return AVERROR_INVALIDDATA;
    }

    h->mby = h->stc;
    h->mbidx = h->mby * h->mb_width;


    h->flags &= ~(B_AVAIL | C_AVAIL);
    if (!h->pic_qp_fixed) {
        h->qp_fixed = get_bits1(gb);
        h->qp = get_bits(gb, 6);
    }

    if ((h->cur.f->pict_type != AV_PICTURE_TYPE_I) ||
        (!h->pic_structure && h->mby >= h->mb_width / 2))
        if (get_bits1(gb)) {
            av_log(h->avctx, AV_LOG_ERROR,
                   "weighted prediction not yet supported\n");
        }
    return 0;
}
