
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_5__ {int (* idct_put ) (int *,int,int *) ;} ;
struct TYPE_6__ {TYPE_1__ idsp; int (* dct_unquantize_intra ) (TYPE_2__*,int *,int,int) ;} ;
typedef TYPE_2__ MpegEncContext ;


 int stub1 (TYPE_2__*,int *,int,int) ;
 int stub2 (int *,int,int *) ;

__attribute__((used)) static inline void put_dct(MpegEncContext *s,
                           int16_t *block, int i, uint8_t *dest, int line_size, int qscale)
{
    s->dct_unquantize_intra(s, block, i, qscale);
    s->idsp.idct_put(dest, line_size, block);
}
