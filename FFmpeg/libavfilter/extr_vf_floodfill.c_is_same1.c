
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int** data; int* linesize; } ;
typedef TYPE_1__ AVFrame ;



__attribute__((used)) static int is_same1(AVFrame *frame, int x, int y,
                    unsigned s0, unsigned s1, unsigned s2, unsigned s3)
{
    unsigned c0 = frame->data[0][y * frame->linesize[0] + x];

    if (s0 == c0)
        return 1;
    return 0;
}
