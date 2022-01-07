
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum frontend_powerstate { ____Placeholder_frontend_powerstate } frontend_powerstate ;


 int powerstate_percent ;
 int powerstate_status ;

enum frontend_powerstate get_last_powerstate(int *percent)
{
   if (percent)
      *percent = powerstate_percent;

   return powerstate_status;
}
