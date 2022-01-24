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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC5(int gpio, int value)
{
   FILE *fp;
   char buf[256];
   FUNC4(buf, sizeof(buf), "/sys/class/gpio/gpio%d/value", gpio);
   fp = FUNC2(buf, "w");

   if(!fp)
   {
      FUNC0("[LED]: failed to set GPIO %d\n", gpio);
      return -1;
   }

   FUNC3(fp, "%d\n", value ? 1 : 0);
   FUNC1(fp);
   return 1;
}