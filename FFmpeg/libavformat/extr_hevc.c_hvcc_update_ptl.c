
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ general_tier_flag; scalar_t__ general_level_idc; scalar_t__ general_profile_idc; int general_constraint_indicator_flags; int general_profile_compatibility_flags; int general_profile_space; } ;
struct TYPE_5__ {scalar_t__ tier_flag; scalar_t__ level_idc; scalar_t__ profile_idc; int constraint_indicator_flags; int profile_compatibility_flags; int profile_space; } ;
typedef TYPE_1__ HVCCProfileTierLevel ;
typedef TYPE_2__ HEVCDecoderConfigurationRecord ;


 void* FFMAX (scalar_t__,scalar_t__) ;

__attribute__((used)) static void hvcc_update_ptl(HEVCDecoderConfigurationRecord *hvcc,
                            HVCCProfileTierLevel *ptl)
{




    hvcc->general_profile_space = ptl->profile_space;






    if (hvcc->general_tier_flag < ptl->tier_flag)
        hvcc->general_level_idc = ptl->level_idc;
    else
        hvcc->general_level_idc = FFMAX(hvcc->general_level_idc, ptl->level_idc);





    hvcc->general_tier_flag = FFMAX(hvcc->general_tier_flag, ptl->tier_flag);
    hvcc->general_profile_idc = FFMAX(hvcc->general_profile_idc, ptl->profile_idc);





    hvcc->general_profile_compatibility_flags &= ptl->profile_compatibility_flags;





    hvcc->general_constraint_indicator_flags &= ptl->constraint_indicator_flags;
}
