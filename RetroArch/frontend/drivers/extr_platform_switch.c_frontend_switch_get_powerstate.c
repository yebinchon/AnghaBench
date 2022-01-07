
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef enum frontend_powerstate { ____Placeholder_frontend_powerstate } frontend_powerstate ;
typedef int Result ;
typedef int ChargerType ;




 int FRONTEND_POWERSTATE_CHARGED ;
 int FRONTEND_POWERSTATE_CHARGING ;
 int FRONTEND_POWERSTATE_NONE ;
 int FRONTEND_POWERSTATE_NO_SOURCE ;
 int R_SUCCEEDED (int ) ;
 int psmGetBatteryChargePercentage (scalar_t__*) ;
 int psmGetChargerType (int*) ;
 int psmInitialized ;

__attribute__((used)) static enum frontend_powerstate
frontend_switch_get_powerstate(int *seconds, int *percent)
{
   uint32_t pct;
   ChargerType ct;
   Result rc;
   if (!psmInitialized)
      return FRONTEND_POWERSTATE_NONE;

   rc = psmGetBatteryChargePercentage(&pct);
   if (!R_SUCCEEDED(rc))
      return FRONTEND_POWERSTATE_NONE;

   rc = psmGetChargerType(&ct);
   if (!R_SUCCEEDED(rc))
      return FRONTEND_POWERSTATE_NONE;

   *percent = (int)pct;

   if (*percent >= 100)
      return FRONTEND_POWERSTATE_CHARGED;

   switch (ct)
   {
      case 129:
      case 128:
         return FRONTEND_POWERSTATE_CHARGING;
      default:
         break;
   }

   return FRONTEND_POWERSTATE_NO_SOURCE;
}
