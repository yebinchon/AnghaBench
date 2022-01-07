
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR (char*) ;
 int LOG_STD (char*) ;
 int vc_tv_power_off () ;

__attribute__((used)) static int power_off( void )
{
   int ret;

   LOG_STD( "Powering off HDMI");

   ret = vc_tv_power_off();
   if ( ret != 0 )
   {
      LOG_ERR( "Failed to power off HDMI" );
   }

   return ret;
}
