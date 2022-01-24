#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fdt; } ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int,char const*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 

const char *FUNC3(DTBLOB_T *dtb, const char *override_name,
                                    int *data_len)
{
   int overrides_off;
   const char *data;
   int len;

   // Find the table of overrides
   overrides_off = FUNC2(dtb->fdt, "/__overrides__");

   if (overrides_off < 0)
   {
      FUNC0("/__overrides__ node not found");
      *data_len = overrides_off;
      return NULL;
   }

   // Locate the property
   data = FUNC1(dtb->fdt, overrides_off, override_name, &len);
   *data_len = len;
   if (data)
      FUNC0("Found override %s", override_name);
   else
      FUNC0("/__overrides__ has no %s property", override_name);

   return data;
}