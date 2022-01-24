#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_7__ {int numcodebreakpoints; TYPE_1__* codebreakpoint; } ;
struct TYPE_8__ {TYPE_2__ bp; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
typedef  TYPE_3__ SH2_struct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

int FUNC2(SH2_struct *context, u32 addr) {
   int i, i2;

   FUNC0("Deleting breakpoint %08X...\n", addr);

   if (context->bp.numcodebreakpoints > 0) {
      for (i = 0; i < context->bp.numcodebreakpoints; i++) {
         if (context->bp.codebreakpoint[i].addr == addr)
         {
            context->bp.codebreakpoint[i].addr = 0xFFFFFFFF;
            FUNC1(context);
            context->bp.numcodebreakpoints--;

            FUNC0("Remaining breakpoints: \n");

            for (i2 = 0; i2 < context->bp.numcodebreakpoints; i2++)
            {
               FUNC0("%08X", context->bp.codebreakpoint[i2].addr);
            }

            return 0;
         }
      }
   }

   FUNC0("Failed deleting breakpoint\n");

   return -1;
}