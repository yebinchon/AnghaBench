
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int int16_t ;
struct TYPE_6__ {int poc; } ;
struct TYPE_5__ {size_t* permutated; } ;
struct TYPE_7__ {int mby; int mbx; TYPE_2__ cur; int avctx; TYPE_1__ scantable; } ;
typedef TYPE_3__ AVSContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*,int ,int ,int ) ;

__attribute__((used)) static inline int dequant(AVSContext *h, int16_t *level_buf, uint8_t *run_buf,
                          int16_t *dst, int mul, int shift, int coeff_num)
{
    int round = 1 << (shift - 1);
    int pos = -1;
    const uint8_t *scantab = h->scantable.permutated;


    while (--coeff_num >= 0) {
        pos += run_buf[coeff_num];
        if (pos > 63) {
            av_log(h->avctx, AV_LOG_ERROR,
                   "position out of block bounds at pic %d MB(%d,%d)\n",
                   h->cur.poc, h->mbx, h->mby);
            return AVERROR_INVALIDDATA;
        }
        dst[scantab[pos]] = (level_buf[coeff_num] * mul + round) >> shift;
    }
    return 0;
}
