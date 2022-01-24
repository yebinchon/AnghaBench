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
typedef  int /*<<< orphan*/  DTBLOB_T ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

int FUNC2(DTBLOB_T *dtb, int pos)
{
   if (pos >= 0)
   {
      const void *prop = FUNC0(dtb, pos, "status", NULL);
      if (prop &&
          ((FUNC1((const char *)prop, "okay") == 0) ||
           (FUNC1((const char *)prop, "ok") == 0)))
         return 1;
   }
   return 0;
}