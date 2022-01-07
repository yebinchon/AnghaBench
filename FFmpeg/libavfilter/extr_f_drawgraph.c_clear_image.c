
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; int* linesize; scalar_t__* data; } ;
struct TYPE_5__ {int bg; } ;
typedef TYPE_1__ DrawGraphContext ;
typedef TYPE_2__ AVFrame ;
typedef int AVFilterLink ;


 int AV_RN32 (int ) ;
 int AV_WN32 (scalar_t__,int) ;

__attribute__((used)) static void clear_image(DrawGraphContext *s, AVFrame *out, AVFilterLink *outlink)
{
    int i, j;
    int bg = AV_RN32(s->bg);

    for (i = 0; i < out->height; i++)
        for (j = 0; j < out->width; j++)
            AV_WN32(out->data[0] + i * out->linesize[0] + j * 4, bg);
}
