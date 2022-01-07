
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_4__ {int (* idct_add ) (int *,int,int *) ;} ;
struct TYPE_5__ {scalar_t__* block_last_index; TYPE_1__ idsp; } ;
typedef TYPE_2__ MpegEncContext ;


 int stub1 (int *,int,int *) ;

__attribute__((used)) static inline void add_dct(MpegEncContext *s,
                           int16_t *block, int i, uint8_t *dest, int line_size)
{
    if (s->block_last_index[i] >= 0) {
        s->idsp.idct_add(dest, line_size, block);
    }
}
