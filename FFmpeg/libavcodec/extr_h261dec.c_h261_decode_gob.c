
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mb_y; int mb_stride; scalar_t__ mb_x; int avctx; int qscale; } ;
struct TYPE_8__ {int current_mba; int mba_diff; TYPE_1__ s; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ H261Context ;


 int AV_LOG_ERROR ;
 int MBA_STUFFING ;
 int SLICE_END ;
 int av_log (int ,int ,char*,scalar_t__) ;
 int ff_set_qscale (TYPE_1__* const,int ) ;
 int h261_decode_mb (TYPE_2__*) ;
 int h261_decode_mb_skipped (TYPE_2__*,int,int) ;

__attribute__((used)) static int h261_decode_gob(H261Context *h)
{
    MpegEncContext *const s = &h->s;

    ff_set_qscale(s, s->qscale);


    while (h->current_mba <= MBA_STUFFING) {
        int ret;

        ret = h261_decode_mb(h);
        if (ret < 0) {
            if (ret == SLICE_END) {
                h261_decode_mb_skipped(h, h->current_mba, 33);
                return 0;
            }
            av_log(s->avctx, AV_LOG_ERROR, "Error at MB: %d\n",
                   s->mb_x + s->mb_y * s->mb_stride);
            return -1;
        }

        h261_decode_mb_skipped(h,
                               h->current_mba - h->mba_diff,
                               h->current_mba - 1);
    }

    return -1;
}
