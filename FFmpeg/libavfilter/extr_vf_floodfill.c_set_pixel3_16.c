
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_1__ AVFrame ;


 int AV_WN16 (scalar_t__,unsigned int) ;

__attribute__((used)) static void set_pixel3_16(AVFrame *frame, int x, int y,
                          unsigned d0, unsigned d1, unsigned d2, unsigned d3)
{
    AV_WN16(frame->data[0] + y * frame->linesize[0] + 2 * x, d0);
    AV_WN16(frame->data[1] + y * frame->linesize[1] + 2 * x, d1);
    AV_WN16(frame->data[2] + y * frame->linesize[2] + 2 * x, d2);
}
