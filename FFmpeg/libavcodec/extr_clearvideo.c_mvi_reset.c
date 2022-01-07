
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int top; int mb_w; int mb_h; int mb_size; int mb_stride; int mv; } ;
typedef TYPE_1__ MVInfo ;
typedef int MV ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void mvi_reset(MVInfo *mvi, int mb_w, int mb_h, int mb_size)
{
    mvi->top = 1;
    mvi->mb_w = mb_w;
    mvi->mb_h = mb_h;
    mvi->mb_size = mb_size;
    mvi->mb_stride = mb_w;
    memset(mvi->mv, 0, sizeof(MV) * mvi->mb_stride * 2);
}
