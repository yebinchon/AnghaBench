
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_1__ AVFrame ;


 int AV_RN16 (scalar_t__) ;

__attribute__((used)) static void pick_pixel1_16(AVFrame *frame, int x, int y,
                           int *s0, int *s1, int *s2, int *s3)
{
    if (*s0 < 0)
        *s0 = AV_RN16(frame->data[0] + y * frame->linesize[0] + 2 * x);
}
