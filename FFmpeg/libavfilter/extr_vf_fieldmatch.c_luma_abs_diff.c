
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int int64_t ;
struct TYPE_4__ {int* linesize; int width; int height; scalar_t__** data; } ;
typedef TYPE_1__ AVFrame ;


 scalar_t__ abs (scalar_t__ const) ;

__attribute__((used)) static int64_t luma_abs_diff(const AVFrame *f1, const AVFrame *f2)
{
    int x, y;
    const uint8_t *srcp1 = f1->data[0];
    const uint8_t *srcp2 = f2->data[0];
    const int src1_linesize = f1->linesize[0];
    const int src2_linesize = f2->linesize[0];
    const int width = f1->width;
    const int height = f1->height;
    int64_t acc = 0;

    for (y = 0; y < height; y++) {
        for (x = 0; x < width; x++)
            acc += abs(srcp1[x] - srcp2[x]);
        srcp1 += src1_linesize;
        srcp2 += src2_linesize;
    }
    return acc;
}
