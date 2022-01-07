
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum frontend_powerstate { ____Placeholder_frontend_powerstate } frontend_powerstate ;


 int FRONTEND_POWERSTATE_CHARGED ;
 int FRONTEND_POWERSTATE_CHARGING ;
 int FRONTEND_POWERSTATE_ON_POWER_SOURCE ;
 int PTMU_GetBatteryChargeState (int*) ;
 int mcuHwcGetBatteryLevel (int*) ;

__attribute__((used)) static enum frontend_powerstate frontend_ctr_get_powerstate(
      int* seconds, int* percent)
{
   u8 battery_percent = 0;
   u8 charging = 0;

   mcuHwcGetBatteryLevel(&battery_percent);

   *percent = battery_percent;

   *seconds = -1;

   PTMU_GetBatteryChargeState(&charging);

   if (charging)
   {
      if (battery_percent == 100)
         return FRONTEND_POWERSTATE_CHARGED;
      return FRONTEND_POWERSTATE_CHARGING;
   }

   return FRONTEND_POWERSTATE_ON_POWER_SOURCE;
}
