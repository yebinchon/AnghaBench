
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum frontend_powerstate { ____Placeholder_frontend_powerstate } frontend_powerstate ;
struct TYPE_3__ {int BatteryFlag; int ACLineStatus; scalar_t__ BatteryLifeTime; scalar_t__ BatteryLifePercent; } ;
typedef TYPE_1__ SYSTEM_POWER_STATUS ;


 int FRONTEND_POWERSTATE_CHARGED ;
 int FRONTEND_POWERSTATE_CHARGING ;
 int FRONTEND_POWERSTATE_NONE ;
 int FRONTEND_POWERSTATE_NO_SOURCE ;
 int FRONTEND_POWERSTATE_ON_POWER_SOURCE ;
 int GetSystemPowerStatus (TYPE_1__*) ;

enum frontend_powerstate frontend_uwp_get_powerstate(
      int *seconds, int *percent)
{
   SYSTEM_POWER_STATUS status;
   enum frontend_powerstate ret = FRONTEND_POWERSTATE_NONE;

   if (!GetSystemPowerStatus(&status))
      return ret;

   if (status.BatteryFlag == 0xFF)
      ret = FRONTEND_POWERSTATE_NONE;
   else if (status.BatteryFlag & (1 << 7))
      ret = FRONTEND_POWERSTATE_NO_SOURCE;
   else if (status.BatteryFlag & (1 << 3))
      ret = FRONTEND_POWERSTATE_CHARGING;
   else if (status.ACLineStatus == 1)
      ret = FRONTEND_POWERSTATE_CHARGED;
   else
      ret = FRONTEND_POWERSTATE_ON_POWER_SOURCE;

   *percent = (int)status.BatteryLifePercent;
   *seconds = (int)status.BatteryLifeTime;






   return ret;
}
