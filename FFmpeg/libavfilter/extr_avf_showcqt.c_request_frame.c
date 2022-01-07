
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* src; } ;
struct TYPE_6__ {TYPE_2__** inputs; } ;
typedef TYPE_2__ AVFilterLink ;


 int AVERROR_EOF ;
 int ff_request_frame (TYPE_2__*) ;
 int filter_frame (TYPE_2__*,int *) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterLink *inlink = outlink->src->inputs[0];
    int ret;

    ret = ff_request_frame(inlink);
    if (ret == AVERROR_EOF)
        ret = filter_frame(inlink, ((void*)0));
    return ret;
}
