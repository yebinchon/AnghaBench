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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int*) ; 

__attribute__((used)) static unsigned int FUNC5(void)
{
   FILE *size_fp;
   unsigned int size;

   /* this file holds the memory range needed to map the framebuffer into
    * kernel address space, it is specified in the device tree
    */
   size_fp = FUNC3("/sys/class/uio/uio0/maps/map0/size", "r");

   if (!size_fp)
   {
      FUNC0("unable to open the uio size file\n");
      FUNC1(1);
   }

   FUNC4(size_fp, "0x%08X", &size);
   FUNC2(size_fp);

   return size;
}