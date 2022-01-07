
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {size_t huff_ncode; TYPE_1__* huff_buffer; } ;
struct TYPE_5__ {int mant; } ;
typedef TYPE_2__ MJpegContext ;


 int av_assert0 (int) ;
 int av_log2_16bit (int) ;
 int ff_mjpeg_encode_code (TYPE_2__*,int ,int) ;

__attribute__((used)) static void ff_mjpeg_encode_coef(MJpegContext *s, uint8_t table_id, int val, int run)
{
    int mant, code;

    if (val == 0) {
        av_assert0(run == 0);
        ff_mjpeg_encode_code(s, table_id, 0);
    } else {
        mant = val;
        if (val < 0) {
            val = -val;
            mant--;
        }

        code = (run << 4) | (av_log2_16bit(val) + 1);

        s->huff_buffer[s->huff_ncode].mant = mant;
        ff_mjpeg_encode_code(s, table_id, code);
    }
}
