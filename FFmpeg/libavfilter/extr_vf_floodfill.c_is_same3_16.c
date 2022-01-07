
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_1__ AVFrame ;


 unsigned int AV_RN16 (scalar_t__) ;

__attribute__((used)) static int is_same3_16(AVFrame *frame, int x, int y,
                       unsigned s0, unsigned s1, unsigned s2, unsigned s3)
{
    unsigned c0 = AV_RN16(frame->data[0] + y * frame->linesize[0] + 2 * x);
    unsigned c1 = AV_RN16(frame->data[1] + y * frame->linesize[1] + 2 * x);
    unsigned c2 = AV_RN16(frame->data[2] + y * frame->linesize[2] + 2 * x);

    if (s0 == c0 && s1 == c1 && s2 == c2)
        return 1;
    return 0;
}
