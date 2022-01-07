
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ HDMI_RES_GROUP_T ;


 scalar_t__ HDMI_RES_GROUP_CEA ;
 scalar_t__ HDMI_RES_GROUP_DMT ;
 int LOG_ERR (char*,char*,int ) ;
 int LOG_STD (char*,char*,int ) ;
 int vc_tv_hdmi_power_on_explicit (int ,scalar_t__,int ) ;

__attribute__((used)) static int power_on_explicit( HDMI_RES_GROUP_T group,
                              uint32_t mode, uint32_t drive )
{
   int ret;

   LOG_STD( "Powering on HDMI with explicit settings (%s mode %u)",
            group == HDMI_RES_GROUP_CEA ? "CEA" : group == HDMI_RES_GROUP_DMT ? "DMT" : "CUSTOM", mode );

   ret = vc_tv_hdmi_power_on_explicit( drive, group, mode );
   if ( ret != 0 )
   {
      LOG_ERR( "Failed to power on HDMI with explicit settings (%s mode %u)",
               group == HDMI_RES_GROUP_CEA ? "CEA" : group == HDMI_RES_GROUP_DMT ? "DMT" : "CUSTOM", mode );
   }

   return ret;
}
