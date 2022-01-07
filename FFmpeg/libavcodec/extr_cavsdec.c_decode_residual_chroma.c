
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cbp; size_t qp; int c_stride; int cv; int gb; int cu; } ;
typedef TYPE_1__ AVSContext ;


 int chroma_dec ;
 int decode_residual_block (TYPE_1__*,int *,int ,int ,int ,int ,int ) ;
 int * ff_cavs_chroma_qp ;

__attribute__((used)) static inline int decode_residual_chroma(AVSContext *h)
{
    if (h->cbp & (1 << 4)) {
        int ret = decode_residual_block(h, &h->gb, chroma_dec, 0,
                              ff_cavs_chroma_qp[h->qp], h->cu, h->c_stride);
        if (ret < 0)
            return ret;
    }
    if (h->cbp & (1 << 5)) {
        int ret = decode_residual_block(h, &h->gb, chroma_dec, 0,
                              ff_cavs_chroma_qp[h->qp], h->cv, h->c_stride);
        if (ret < 0)
            return ret;
    }
    return 0;
}
