
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum frontend_powerstate { ____Placeholder_frontend_powerstate } frontend_powerstate ;


 int FRONTEND_POWERSTATE_CHARGED ;
 int FRONTEND_POWERSTATE_CHARGING ;
 int FRONTEND_POWERSTATE_NONE ;
 int FRONTEND_POWERSTATE_NO_SOURCE ;
 int FRONTEND_POWERSTATE_ON_POWER_SOURCE ;
 int scePowerGetBatteryLifePercent () ;
 int scePowerGetBatteryLifeTime () ;
 int scePowerIsBatteryCharging () ;
 int scePowerIsBatteryExist () ;
 int scePowerIsPowerOnline () ;

__attribute__((used)) static enum frontend_powerstate frontend_psp_get_powerstate(int *seconds, int *percent)
{
   enum frontend_powerstate ret = FRONTEND_POWERSTATE_NONE;

   int battery = scePowerIsBatteryExist();

   int plugged = scePowerIsPowerOnline();
   int charging = scePowerIsBatteryCharging();

   *percent = scePowerGetBatteryLifePercent();
   *seconds = scePowerGetBatteryLifeTime() * 60;


   if (!battery)
   {
      ret = FRONTEND_POWERSTATE_NO_SOURCE;
      *seconds = -1;
      *percent = -1;
   }
   else

   if (charging)
      ret = FRONTEND_POWERSTATE_CHARGING;
   else if (plugged)
      ret = FRONTEND_POWERSTATE_CHARGED;
   else
      ret = FRONTEND_POWERSTATE_ON_POWER_SOURCE;

   return ret;
}
