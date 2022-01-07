
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* dstpad; } ;
struct TYPE_7__ {int * (* get_video_buffer ) (TYPE_2__*,int,int) ;} ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;


 int FF_TPRINTF_START (int *,int ) ;
 int * ff_default_get_video_buffer (TYPE_2__*,int,int) ;
 int ff_tlog_link (int *,TYPE_2__*,int ) ;
 int get_video_buffer ;
 int * stub1 (TYPE_2__*,int,int) ;

AVFrame *ff_get_video_buffer(AVFilterLink *link, int w, int h)
{
    AVFrame *ret = ((void*)0);

    FF_TPRINTF_START(((void*)0), get_video_buffer); ff_tlog_link(((void*)0), link, 0);

    if (link->dstpad->get_video_buffer)
        ret = link->dstpad->get_video_buffer(link, w, h);

    if (!ret)
        ret = ff_default_get_video_buffer(link, w, h);

    return ret;
}
