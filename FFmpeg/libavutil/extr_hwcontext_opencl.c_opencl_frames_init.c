
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cl_mem ;
struct TYPE_7__ {TYPE_1__* internal; int pool; } ;
struct TYPE_6__ {int pool_internal; } ;
typedef TYPE_2__ AVHWFramesContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_buffer_pool_init2 (int,TYPE_2__*,int *,int *) ;
 int opencl_frames_init_command_queue (TYPE_2__*) ;
 int opencl_pool_alloc ;

__attribute__((used)) static int opencl_frames_init(AVHWFramesContext *hwfc)
{
    if (!hwfc->pool) {
        hwfc->internal->pool_internal =
            av_buffer_pool_init2(sizeof(cl_mem), hwfc,
                                 &opencl_pool_alloc, ((void*)0));
        if (!hwfc->internal->pool_internal)
            return AVERROR(ENOMEM);
    }

    return opencl_frames_init_command_queue(hwfc);
}
