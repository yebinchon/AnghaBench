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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
#define  ACPI_VAL_CHARGING_DISCHARGING 128 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char**,char**,char**) ; 
 char* proc_acpi_battery_path ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,char const*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char**,int) ; 

__attribute__((used)) static void FUNC8(const char * node, bool * have_battery,
      bool * charging, int *seconds, int *percent)
{
   char path[1024];
   const char *base  = proc_acpi_battery_path;
   int64_t length    = 0;
   char         *ptr = NULL;
   char  *buf        = NULL;
   char  *buf_info   = NULL;
   char         *key = NULL;
   char         *val = NULL;
   bool       charge = false;
   bool       choose = false;
   int       maximum = -1;
   int     remaining = -1;
   int          secs = -1;
   int           pct = -1;

   path[0]           = '\0';

   FUNC5(path, sizeof(path), "%s/%s/%s", base, node, "state");

   if (!FUNC1(path))
      goto end;

   if (!FUNC2(path, (void**)&buf, &length))
      goto end;

   FUNC5(path, sizeof(path), "%s/%s/%s", base, node, "info");
   if (!FUNC2(path, (void**)&buf_info, &length))
      goto end;

   ptr = &buf[0];

   while (FUNC4(&ptr, &key, &val))
   {
      if (FUNC6(key, "present"))
      {
         if (FUNC6(val, "yes"))
            *have_battery = true;
      }
      else if (FUNC6(key, "charging state"))
      {
         if (FUNC6(val, "charging"))
            charge = true;
         else
         {
            uint32_t val_hash = FUNC0(val);

            switch (val_hash)
            {
               case ACPI_VAL_CHARGING_DISCHARGING:
                  charge = true;
                  break;
               default:
                  break;
            }
         }
      }
      else if (FUNC6(key, "remaining capacity"))
      {
         char *endptr = NULL;

         if (endptr && *endptr == ' ')
            remaining = (int)FUNC7(val, &endptr, 10);
      }
   }

   ptr = &buf_info[0];

   while (FUNC4(&ptr, &key, &val))
   {
      char      *endptr = NULL;

      if (FUNC6(key, "design capacity"))
         if (endptr && *endptr == ' ')
            maximum = (int)FUNC7(val, &endptr, 10);
   }

   if ((maximum >= 0) && (remaining >= 0))
   {
      pct = (int) ((((float) remaining) / ((float) maximum)) * 100.0f);
      if (pct < 0)
         pct = 0;
      if (pct > 100)
         pct = 100;
   }

   /* !!! FIXME: calculate (secs). */

   /*
    * We pick the battery that claims to have the most minutes left.
    *  (failing a report of minutes, we'll take the highest percent.)
    */
   if ((secs < 0) && (*seconds < 0))
   {
      if ((pct < 0) && (*percent < 0))
         choose = true;  /* at least we know there's a battery. */
      if (pct > *percent)
         choose = true;
   }
   else if (secs > *seconds)
      choose = true;

   if (choose)
   {
      *seconds  = secs;
      *percent  = pct;
      *charging = charge;
   }

end:
   if (buf_info)
      FUNC3(buf_info);
   if (buf)
      FUNC3(buf);
   buf      = NULL;
   buf_info = NULL;
}