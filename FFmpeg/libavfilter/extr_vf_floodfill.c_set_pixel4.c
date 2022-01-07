
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int** data; int* linesize; } ;
typedef TYPE_1__ AVFrame ;



__attribute__((used)) static void set_pixel4(AVFrame *frame, int x, int y,
                       unsigned d0, unsigned d1, unsigned d2, unsigned d3)
{
    frame->data[0][y * frame->linesize[0] + x] = d0;
    frame->data[1][y * frame->linesize[1] + x] = d1;
    frame->data[2][y * frame->linesize[2] + x] = d2;
    frame->data[3][y * frame->linesize[3] + x] = d3;
}
