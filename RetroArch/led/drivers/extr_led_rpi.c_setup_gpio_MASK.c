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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,...) ; 

__attribute__((used)) static int FUNC5(int gpio)
{
   FILE *fp;
   char buf[256];
   FUNC4(buf, sizeof(buf), "/sys/class/gpio/gpio%d/direction", gpio);
   fp = FUNC2(buf, "w");

   if(!fp)
   {
      FUNC4(buf, sizeof(buf), "/sys/class/gpio/export");
      fp = FUNC2(buf, "w");

      if(!fp)
      {
         FUNC0("[LED]: failed to export GPIO %d\n", gpio);
         return -1;
      }

      FUNC3(fp,"%d\n", gpio);
      FUNC1(fp);

      FUNC4(buf, sizeof(buf), "/sys/class/gpio/gpio%d/direction", gpio);
      fp = FUNC2(buf, "w");
   }

   if(!fp)
   {
      FUNC0("[LED]: failed to set direction GPIO %d\n",
            gpio);
      return -1;
   }

   FUNC3(fp, "out\n");
   FUNC1(fp);
   return 1;
}