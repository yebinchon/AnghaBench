
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int height; int* linesize; int ** data; } ;
typedef TYPE_1__ AVFrame ;



__attribute__((used)) static void flip_swap_frame(AVFrame *f)
{
    int i;
    uint8_t *data_1 = f->data[1];
    f->data[0] = f->data[0] + ( f->height - 1) * f->linesize[0];
    f->data[1] = f->data[2] + ((f->height >> 1) - 1) * f->linesize[2];
    f->data[2] = data_1 + ((f->height >> 1) - 1) * f->linesize[1];
    for (i = 0; i < 3; i++)
        f->linesize[i] *= -1;
}
