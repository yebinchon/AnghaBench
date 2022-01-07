
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cbp; unsigned int qp; int l_stride; scalar_t__* luma_scan; scalar_t__ cy; int gb; int qp_fixed; int avctx; } ;
typedef TYPE_1__ AVSContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,int) ;
 int** cbp_tab ;
 int decode_residual_block (TYPE_1__*,int *,int ,int ,unsigned int,scalar_t__,int ) ;
 int decode_residual_chroma (TYPE_1__*) ;
 scalar_t__ get_se_golomb (int *) ;
 int get_ue_golomb (int *) ;
 int inter_dec ;

__attribute__((used)) static inline int decode_residual_inter(AVSContext *h)
{
    int block;


    int cbp = get_ue_golomb(&h->gb);
    if (cbp > 63U) {
        av_log(h->avctx, AV_LOG_ERROR, "illegal inter cbp %d\n", cbp);
        return AVERROR_INVALIDDATA;
    }
    h->cbp = cbp_tab[cbp][1];


    if (h->cbp && !h->qp_fixed)
        h->qp = (h->qp + (unsigned)get_se_golomb(&h->gb)) & 63;
    for (block = 0; block < 4; block++)
        if (h->cbp & (1 << block))
            decode_residual_block(h, &h->gb, inter_dec, 0, h->qp,
                                  h->cy + h->luma_scan[block], h->l_stride);
    decode_residual_chroma(h);

    return 0;
}
