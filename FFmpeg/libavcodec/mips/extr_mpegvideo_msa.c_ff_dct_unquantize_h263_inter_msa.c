
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_4__ {size_t* raster_end; } ;
struct TYPE_5__ {size_t* block_last_index; TYPE_1__ inter_scantable; } ;
typedef TYPE_2__ MpegEncContext ;


 int av_assert2 (int) ;
 int h263_dct_unquantize_msa (int *,size_t,size_t,size_t,int ) ;

void ff_dct_unquantize_h263_inter_msa(MpegEncContext *s,
                                      int16_t *block, int32_t index,
                                      int32_t qscale)
{
    int32_t qmul, qadd;
    int32_t nCoeffs;

    av_assert2(s->block_last_index[index] >= 0);

    qadd = (qscale - 1) | 1;
    qmul = qscale << 1;

    nCoeffs = s->inter_scantable.raster_end[s->block_last_index[index]];

    h263_dct_unquantize_msa(block, qmul, qadd, nCoeffs, 0);
}
