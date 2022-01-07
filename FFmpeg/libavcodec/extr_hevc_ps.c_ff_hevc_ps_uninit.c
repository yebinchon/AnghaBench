
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vps; int * pps; int * sps; int * pps_list; int * sps_list; int * vps_list; } ;
typedef TYPE_1__ HEVCParamSets ;


 int FF_ARRAY_ELEMS (int *) ;
 int av_buffer_unref (int *) ;

void ff_hevc_ps_uninit(HEVCParamSets *ps)
{
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(ps->vps_list); i++)
        av_buffer_unref(&ps->vps_list[i]);
    for (i = 0; i < FF_ARRAY_ELEMS(ps->sps_list); i++)
        av_buffer_unref(&ps->sps_list[i]);
    for (i = 0; i < FF_ARRAY_ELEMS(ps->pps_list); i++)
        av_buffer_unref(&ps->pps_list[i]);

    ps->sps = ((void*)0);
    ps->pps = ((void*)0);
    ps->vps = ((void*)0);
}
