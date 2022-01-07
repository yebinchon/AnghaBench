
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int level_idc; } ;
typedef TYPE_1__ H265LevelDescriptor ;


 int FF_ARRAY_ELEMS (TYPE_1__ const*) ;
 TYPE_1__ const* h265_levels ;

const H265LevelDescriptor *ff_h265_get_level(int level_idc)
{
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(h265_levels); i++) {
        if (h265_levels[i].level_idc == level_idc)
            return &h265_levels[i];
    }

    return ((void*)0);
}
