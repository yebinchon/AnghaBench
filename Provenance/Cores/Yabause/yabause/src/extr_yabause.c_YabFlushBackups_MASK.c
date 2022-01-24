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

/* Variables and functions */
 scalar_t__ BupRam ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,int,int,scalar_t__) ; 
 int /*<<< orphan*/  YAB_ERR_FILEWRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ bupfilename ; 

void FUNC3(void)
{
   if (BupRam)
   {
      if (FUNC1(BupRam, 0x10000, 1, bupfilename) != 0)
         FUNC2(YAB_ERR_FILEWRITE, (void *)bupfilename);
   }

   FUNC0();
}