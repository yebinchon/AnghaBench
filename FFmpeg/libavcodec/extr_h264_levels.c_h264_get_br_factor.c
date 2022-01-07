
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int profile_idc; int cpb_br_nal_factor; } ;


 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 TYPE_1__* h264_br_factors ;

__attribute__((used)) static int h264_get_br_factor(int profile_idc)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(h264_br_factors); i++) {
        if (h264_br_factors[i].profile_idc == profile_idc)
            return h264_br_factors[i].cpb_br_nal_factor;
    }

    return 1200;
}
