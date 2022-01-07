
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR (char*) ;
 int LOG_STD (char*) ;
 int vc_tv_hdmi_power_on_preferred () ;

__attribute__((used)) static int power_on_preferred( void )
{
   int ret;

   LOG_STD( "Powering on HDMI with preferred settings" );

   ret = vc_tv_hdmi_power_on_preferred();
   if ( ret != 0 )
   {
      LOG_ERR( "Failed to power on HDMI with preferred settings" );
   }

   return ret;
}
