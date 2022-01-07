
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dst; } ;
struct TYPE_4__ {int * outputs; } ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;


 int * ff_get_video_buffer (int ,int,int) ;

AVFrame *ff_null_get_video_buffer(AVFilterLink *link, int w, int h)
{
    return ff_get_video_buffer(link->dst->outputs[0], w, h);
}
