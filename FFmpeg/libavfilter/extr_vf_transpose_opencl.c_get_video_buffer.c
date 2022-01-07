
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ passthrough; } ;
typedef TYPE_2__ TransposeOpenCLContext ;
struct TYPE_9__ {TYPE_1__* dst; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterLink ;


 int * ff_default_get_video_buffer (TYPE_3__*,int,int) ;
 int * ff_null_get_video_buffer (TYPE_3__*,int,int) ;

__attribute__((used)) static AVFrame *get_video_buffer(AVFilterLink *inlink, int w, int h)
{
    TransposeOpenCLContext *s = inlink->dst->priv;

    return s->passthrough ?
        ff_null_get_video_buffer (inlink, w, h) :
        ff_default_get_video_buffer(inlink, w, h);
}
