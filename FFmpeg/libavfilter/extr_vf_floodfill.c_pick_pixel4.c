
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** data; int* linesize; } ;
typedef TYPE_1__ AVFrame ;



__attribute__((used)) static void pick_pixel4(AVFrame *frame, int x, int y,
                        int *s0, int *s1, int *s2, int *s3)
{
    if (*s0 < 0)
        *s0 = frame->data[0][y * frame->linesize[0] + x];
    if (*s1 < 0)
        *s1 = frame->data[1][y * frame->linesize[1] + x];
    if (*s2 < 0)
        *s2 = frame->data[2][y * frame->linesize[2] + x];
    if (*s3 < 0)
        *s3 = frame->data[3][y * frame->linesize[3] + x];
}
