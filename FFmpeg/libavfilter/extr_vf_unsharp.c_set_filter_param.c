
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msize_x; int msize_y; float amount; int steps_x; int steps_y; int scalebits; int halfscale; } ;
typedef TYPE_1__ UnsharpFilterParam ;



__attribute__((used)) static void set_filter_param(UnsharpFilterParam *fp, int msize_x, int msize_y, float amount)
{
    fp->msize_x = msize_x;
    fp->msize_y = msize_y;
    fp->amount = amount * 65536.0;

    fp->steps_x = msize_x / 2;
    fp->steps_y = msize_y / 2;
    fp->scalebits = (fp->steps_x + fp->steps_y) * 2;
    fp->halfscale = 1 << (fp->scalebits - 1);
}
