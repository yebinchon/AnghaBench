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
struct RDIR {int dummy; } ;
typedef  enum frontend_powerstate { ____Placeholder_frontend_powerstate } frontend_powerstate ;

/* Variables and functions */
 int FRONTEND_POWERSTATE_CHARGED ; 
 int FRONTEND_POWERSTATE_CHARGING ; 
 int FRONTEND_POWERSTATE_NO_SOURCE ; 
 int FRONTEND_POWERSTATE_ON_POWER_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  proc_acpi_ac_adapter_path ; 
 int /*<<< orphan*/  proc_acpi_battery_path ; 
 int /*<<< orphan*/  FUNC2 (struct RDIR*) ; 
 scalar_t__ FUNC3 (struct RDIR*) ; 
 int /*<<< orphan*/  FUNC4 (struct RDIR*) ; 
 struct RDIR* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct RDIR*) ; 

__attribute__((used)) static bool FUNC7(
      enum frontend_powerstate *state,
      int *seconds, int *percent)
{
   bool have_battery   = false;
   bool have_ac        = false;
   bool charging       = false;
   struct RDIR *entry  = FUNC5(proc_acpi_battery_path);
   if (!entry)
      return false;

   if (FUNC3(entry))
   {
      FUNC2(entry);
      return false;
   }

   while (FUNC6(entry))
      FUNC1(FUNC4(entry),
            &have_battery, &charging, seconds, percent);

   FUNC2(entry);

   entry = FUNC5(proc_acpi_ac_adapter_path);
   if (!entry)
      return false;

   while (FUNC6(entry))
      FUNC0(
            FUNC4(entry), &have_ac);

   FUNC2(entry);

   if (!have_battery)
      *state = FRONTEND_POWERSTATE_NO_SOURCE;
   else if (charging)
      *state = FRONTEND_POWERSTATE_CHARGING;
   else if (have_ac)
      *state = FRONTEND_POWERSTATE_CHARGED;
   else
      *state = FRONTEND_POWERSTATE_ON_POWER_SOURCE;

   return true;
}