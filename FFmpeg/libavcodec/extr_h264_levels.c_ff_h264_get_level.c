
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int level_idc; int constraint_set3_flag; } ;
typedef TYPE_1__ H264LevelDescriptor ;


 int FF_ARRAY_ELEMS (TYPE_1__ const*) ;
 TYPE_1__ const* h264_levels ;

const H264LevelDescriptor *ff_h264_get_level(int level_idc,
                                             int constraint_set3_flag)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(h264_levels); i++) {
        if (h264_levels[i].level_idc == level_idc &&
            h264_levels[i].constraint_set3_flag == constraint_set3_flag)
            return &h264_levels[i];
    }
    return ((void*)0);
}
