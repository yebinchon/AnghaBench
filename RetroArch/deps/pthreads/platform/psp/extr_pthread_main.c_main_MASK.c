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
struct TYPE_3__ {int Buttons; } ;
typedef  TYPE_1__ SceCtrlData ;

/* Variables and functions */
 int PSP_CTRL_UP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

int FUNC5(void)
{
   SceCtrlData pad;

   FUNC2();
   FUNC0();

   FUNC3();

   while (1)
   {
      FUNC4(&pad, 1);
      if (pad.Buttons & PSP_CTRL_UP)
      {
         FUNC1("Exiting...\n");
         return 0;
      }

   }
   return 0;
}