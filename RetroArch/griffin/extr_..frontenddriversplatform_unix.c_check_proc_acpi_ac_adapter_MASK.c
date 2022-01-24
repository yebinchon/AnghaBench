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
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 scalar_t__ ACPI_VAL_ONLINE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char**,char**,char**) ; 
 char* proc_acpi_ac_adapter_path ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,char const*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static void FUNC7(const char * node, bool *have_ac)
{
   char path[1024];
   const char *base = proc_acpi_ac_adapter_path;
   char       *buf  = NULL;
   char        *ptr = NULL;
   char        *key = NULL;
   char        *val = NULL;
   int64_t length   = 0;

   path[0]          = '\0';

   FUNC5(path, sizeof(path), "%s/%s/%s", base, node, "state");
   if (!FUNC1(path))
      return;

   if (FUNC2(path, (void**)&buf, &length) != 1)
      return;

   ptr = &buf[0];
   while (FUNC4(&ptr, &key, &val))
   {
      uint32_t val_hash = FUNC0(val);

      if (FUNC6(key, "state") &&
            val_hash == ACPI_VAL_ONLINE)
         *have_ac = true;
   }

   if (buf)
      FUNC3(buf);
   buf = NULL;
}