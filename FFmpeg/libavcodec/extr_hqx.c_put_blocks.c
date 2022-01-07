
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_6__ {int (* idct_put ) (int *,int,int *,int const*) ;} ;
struct TYPE_7__ {TYPE_2__ hqxdsp; TYPE_1__* pic; } ;
struct TYPE_5__ {int* linesize; int ** data; } ;
typedef TYPE_3__ HQXContext ;


 int stub1 (int *,int,int *,int const*) ;
 int stub2 (int *,int,int *,int const*) ;

__attribute__((used)) static inline void put_blocks(HQXContext *ctx, int plane,
                              int x, int y, int ilace,
                              int16_t *block0, int16_t *block1,
                              const uint8_t *quant)
{
    int fields = ilace ? 2 : 1;
    int lsize = ctx->pic->linesize[plane];
    uint8_t *p = ctx->pic->data[plane] + x * 2;

    ctx->hqxdsp.idct_put((uint16_t *)(p + y * lsize),
                         lsize * fields, block0, quant);
    ctx->hqxdsp.idct_put((uint16_t *)(p + (y + (ilace ? 1 : 8)) * lsize),
                         lsize * fields, block1, quant);
}
