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
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* proc_acpi_sysfs_ac_adapter_path ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(const char * node, bool *have_ac)
{
   char  path[1024];
   int64_t length   = 0;
   char     *buf    = NULL;
   const char *base = proc_acpi_sysfs_ac_adapter_path;

   path[0]          = '\0';

   FUNC3(path, sizeof(path), "%s/%s", base, "online");
   if (!FUNC0(path))
      return;

   if (FUNC1(path, (void**)&buf, &length) != 1)
      return;

   if (FUNC4((char*)buf, "1"))
      *have_ac = true;

   FUNC2(buf);
}