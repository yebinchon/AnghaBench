
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mb_stride; int * mv; scalar_t__ top; } ;
typedef TYPE_1__ MVInfo ;



__attribute__((used)) static void mvi_update_row(MVInfo *mvi)
{
    int i;

    mvi->top = 0;
    for (i = 0 ; i < mvi->mb_stride; i++) {
        mvi->mv[i] = mvi->mv[mvi->mb_stride + i];
    }
}
