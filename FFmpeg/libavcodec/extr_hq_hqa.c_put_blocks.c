
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_8__ {int* linesize; int ** data; } ;
struct TYPE_6__ {int (* idct_put ) (int *,int,int *) ;} ;
struct TYPE_7__ {TYPE_1__ hqhqadsp; } ;
typedef TYPE_2__ HQContext ;
typedef TYPE_3__ AVFrame ;


 int stub1 (int *,int,int *) ;
 int stub2 (int *,int,int *) ;

__attribute__((used)) static inline void put_blocks(HQContext *c, AVFrame *pic,
                              int plane, int x, int y, int ilace,
                              int16_t *block0, int16_t *block1)
{
    uint8_t *p = pic->data[plane] + x;

    c->hqhqadsp.idct_put(p + y * pic->linesize[plane],
                         pic->linesize[plane] << ilace, block0);
    c->hqhqadsp.idct_put(p + (y + (ilace ? 1 : 8)) * pic->linesize[plane],
                         pic->linesize[plane] << ilace, block1);
}
