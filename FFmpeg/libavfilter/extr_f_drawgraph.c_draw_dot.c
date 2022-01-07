
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_1__ AVFrame ;


 int AV_WN32 (scalar_t__,int) ;

__attribute__((used)) static inline void draw_dot(int fg, int x, int y, AVFrame *out)
{
    AV_WN32(out->data[0] + y * out->linesize[0] + x * 4, fg);
}
