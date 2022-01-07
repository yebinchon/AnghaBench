
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_4__ {int* raster_end; } ;
struct TYPE_5__ {size_t* block_last_index; TYPE_1__ inter_scantable; } ;
typedef TYPE_2__ MpegEncContext ;


 int ff_dct_unquantize_h263_neon (int,int,int,int *) ;

__attribute__((used)) static void dct_unquantize_h263_inter_neon(MpegEncContext *s, int16_t *block,
                                           int n, int qscale)
{
    int nCoeffs = s->inter_scantable.raster_end[s->block_last_index[n]];
    int qadd = (qscale - 1) | 1;

    ff_dct_unquantize_h263_neon(qscale, qadd, nCoeffs + 1, block);
}
