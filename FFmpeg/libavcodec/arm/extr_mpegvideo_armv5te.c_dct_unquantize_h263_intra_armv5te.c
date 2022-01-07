
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_4__ {int* raster_end; } ;
struct TYPE_5__ {size_t* block_last_index; int y_dc_scale; int c_dc_scale; TYPE_1__ inter_scantable; scalar_t__ ac_pred; int h263_aic; } ;
typedef TYPE_2__ MpegEncContext ;


 int av_assert2 (int) ;
 int ff_dct_unquantize_h263_armv5te (int*,int,int,int) ;

__attribute__((used)) static void dct_unquantize_h263_intra_armv5te(MpegEncContext *s,
                                  int16_t *block, int n, int qscale)
{
    int level, qmul, qadd;
    int nCoeffs;

    av_assert2(s->block_last_index[n]>=0);

    qmul = qscale << 1;

    if (!s->h263_aic) {
        if (n < 4)
            level = block[0] * s->y_dc_scale;
        else
            level = block[0] * s->c_dc_scale;
        qadd = (qscale - 1) | 1;
    }else{
        qadd = 0;
        level = block[0];
    }
    if(s->ac_pred)
        nCoeffs=63;
    else
        nCoeffs= s->inter_scantable.raster_end[ s->block_last_index[n] ];

    ff_dct_unquantize_h263_armv5te(block, qmul, qadd, nCoeffs + 1);
    block[0] = level;
}
