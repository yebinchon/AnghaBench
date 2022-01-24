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
typedef  scalar_t__ uint32_t ;
typedef  enum frontend_powerstate { ____Placeholder_frontend_powerstate } frontend_powerstate ;
typedef  int /*<<< orphan*/  Result ;
typedef  int ChargerType ;

/* Variables and functions */
#define  ChargerType_Charger 129 
#define  ChargerType_Usb 128 
 int FRONTEND_POWERSTATE_CHARGED ; 
 int FRONTEND_POWERSTATE_CHARGING ; 
 int FRONTEND_POWERSTATE_NONE ; 
 int FRONTEND_POWERSTATE_NO_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  psmInitialized ; 

__attribute__((used)) static enum frontend_powerstate 
FUNC3(int *seconds, int *percent)
{
   uint32_t pct;
   ChargerType ct;
   Result rc;
   if (!psmInitialized)
      return FRONTEND_POWERSTATE_NONE;

   rc = FUNC1(&pct);
   if (!FUNC0(rc))
      return FRONTEND_POWERSTATE_NONE;

   rc = FUNC2(&ct);
   if (!FUNC0(rc))
      return FRONTEND_POWERSTATE_NONE;

   *percent = (int)pct;

   if (*percent >= 100)
      return FRONTEND_POWERSTATE_CHARGED;

   switch (ct)
   {
      case ChargerType_Charger:
      case ChargerType_Usb:
         return FRONTEND_POWERSTATE_CHARGING;
      default:
         break;
   }

   return FRONTEND_POWERSTATE_NO_SOURCE;
}