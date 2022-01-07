
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* dstpad; } ;
struct TYPE_6__ {int * (* get_audio_buffer ) (TYPE_2__*,int) ;} ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;


 int * ff_default_get_audio_buffer (TYPE_2__*,int) ;
 int * stub1 (TYPE_2__*,int) ;

AVFrame *ff_get_audio_buffer(AVFilterLink *link, int nb_samples)
{
    AVFrame *ret = ((void*)0);

    if (link->dstpad->get_audio_buffer)
        ret = link->dstpad->get_audio_buffer(link, nb_samples);

    if (!ret)
        ret = ff_default_get_audio_buffer(link, nb_samples);

    return ret;
}
