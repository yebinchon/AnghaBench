
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** data; int* linesize; } ;
typedef TYPE_1__ AVFrame ;



__attribute__((used)) static void pick_pixel1(AVFrame *frame, int x, int y,
                        int *s0, int *s1, int *s2, int *s3)
{
    if (*s0 < 0)
        *s0 = frame->data[0][y * frame->linesize[0] + x];
}
