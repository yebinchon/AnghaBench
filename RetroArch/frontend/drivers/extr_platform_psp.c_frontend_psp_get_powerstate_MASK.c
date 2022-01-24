#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum frontend_powerstate { ____Placeholder_frontend_powerstate } frontend_powerstate ;

/* Variables and functions */
 int FRONTEND_POWERSTATE_CHARGED ; 
 int FRONTEND_POWERSTATE_CHARGING ; 
 int FRONTEND_POWERSTATE_NONE ; 
 int FRONTEND_POWERSTATE_NO_SOURCE ; 
 int FRONTEND_POWERSTATE_ON_POWER_SOURCE ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 

__attribute__((used)) static enum frontend_powerstate FUNC5(int *seconds, int *percent)
{
   enum frontend_powerstate ret = FRONTEND_POWERSTATE_NONE;
#ifndef VITA
   int battery                  = FUNC3();
#endif
   int plugged                  = FUNC4();
   int charging                 = FUNC2();

   *percent = FUNC0();
   *seconds = FUNC1() * 60;

#ifndef VITA
   if (!battery)
   {
      ret = FRONTEND_POWERSTATE_NO_SOURCE;
      *seconds = -1;
      *percent = -1;
   }
   else
#endif
   if (charging)
      ret = FRONTEND_POWERSTATE_CHARGING;
   else if (plugged)
      ret = FRONTEND_POWERSTATE_CHARGED;
   else
      ret = FRONTEND_POWERSTATE_ON_POWER_SOURCE;

   return ret;
}