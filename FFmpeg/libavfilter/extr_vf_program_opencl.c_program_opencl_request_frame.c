
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * src; } ;
typedef TYPE_1__ AVFilterLink ;
typedef int AVFilterContext ;


 int program_opencl_run (int *) ;

__attribute__((used)) static int program_opencl_request_frame(AVFilterLink *outlink)
{
    AVFilterContext *avctx = outlink->src;

    return program_opencl_run(avctx);
}
