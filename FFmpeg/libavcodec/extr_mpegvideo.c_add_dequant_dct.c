
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_5__ {int (* idct_add ) (int *,int,int *) ;} ;
struct TYPE_6__ {scalar_t__* block_last_index; TYPE_1__ idsp; int (* dct_unquantize_inter ) (TYPE_2__*,int *,int,int) ;} ;
typedef TYPE_2__ MpegEncContext ;


 int stub1 (TYPE_2__*,int *,int,int) ;
 int stub2 (int *,int,int *) ;

__attribute__((used)) static inline void add_dequant_dct(MpegEncContext *s,
                           int16_t *block, int i, uint8_t *dest, int line_size, int qscale)
{
    if (s->block_last_index[i] >= 0) {
        s->dct_unquantize_inter(s, block, i, qscale);

        s->idsp.idct_add(dest, line_size, block);
    }
}
