
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int profile_idc; int constraint_set_flags; } ;
typedef TYPE_1__ SPS ;



 int FF_PROFILE_H264_CONSTRAINED ;



 int FF_PROFILE_H264_INTRA ;

int ff_h264_get_profile(const SPS *sps)
{
    int profile = sps->profile_idc;

    switch (sps->profile_idc) {
    case 131:

        profile |= (sps->constraint_set_flags & 1 << 1) ? FF_PROFILE_H264_CONSTRAINED : 0;
        break;
    case 130:
    case 129:
    case 128:

        profile |= (sps->constraint_set_flags & 1 << 3) ? FF_PROFILE_H264_INTRA : 0;
        break;
    }

    return profile;
}
