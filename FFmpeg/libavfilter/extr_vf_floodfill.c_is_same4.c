
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int** data; int* linesize; } ;
typedef TYPE_1__ AVFrame ;



__attribute__((used)) static int is_same4(AVFrame *frame, int x, int y,
                    unsigned s0, unsigned s1, unsigned s2, unsigned s3)
{
    unsigned c0 = frame->data[0][y * frame->linesize[0] + x];
    unsigned c1 = frame->data[1][y * frame->linesize[1] + x];
    unsigned c2 = frame->data[2][y * frame->linesize[2] + x];
    unsigned c3 = frame->data[3][y * frame->linesize[3] + x];

    if (s0 == c0 && s1 == c1 && s2 == c2 && s3 == c3)
        return 1;
    return 0;
}
