
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_4__ {int (* idct ) (int *) ;} ;
struct TYPE_5__ {TYPE_1__ idsp; } ;
typedef TYPE_2__ DVVideoContext ;


 int put_block_8x4 (int *,int *,int) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *) ;
 int stub4 (int *) ;

__attribute__((used)) static void dv100_idct_put_last_row_field_luma(DVVideoContext *s, uint8_t *data,
                                               int stride, int16_t *blocks)
{
    s->idsp.idct(blocks + 0*64);
    s->idsp.idct(blocks + 1*64);
    s->idsp.idct(blocks + 2*64);
    s->idsp.idct(blocks + 3*64);

    put_block_8x4(blocks+0*64, data, stride<<1);
    put_block_8x4(blocks+0*64 + 4*8, data + 16, stride<<1);
    put_block_8x4(blocks+1*64, data + 8, stride<<1);
    put_block_8x4(blocks+1*64 + 4*8, data + 24, stride<<1);
    put_block_8x4(blocks+2*64, data + stride, stride<<1);
    put_block_8x4(blocks+2*64 + 4*8, data + 16 + stride, stride<<1);
    put_block_8x4(blocks+3*64, data + 8 + stride, stride<<1);
    put_block_8x4(blocks+3*64 + 4*8, data + 24 + stride, stride<<1);
}
