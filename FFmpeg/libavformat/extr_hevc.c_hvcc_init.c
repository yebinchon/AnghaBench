
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int configurationVersion; int lengthSizeMinusOne; int general_profile_compatibility_flags; int general_constraint_indicator_flags; scalar_t__ min_spatial_segmentation_idc; } ;
typedef TYPE_1__ HEVCDecoderConfigurationRecord ;


 scalar_t__ MAX_SPATIAL_SEGMENTATION ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void hvcc_init(HEVCDecoderConfigurationRecord *hvcc)
{
    memset(hvcc, 0, sizeof(HEVCDecoderConfigurationRecord));
    hvcc->configurationVersion = 1;
    hvcc->lengthSizeMinusOne = 3;





    hvcc->general_profile_compatibility_flags = 0xffffffff;
    hvcc->general_constraint_indicator_flags = 0xffffffffffff;





    hvcc->min_spatial_segmentation_idc = MAX_SPATIAL_SEGMENTATION + 1;
}
