#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int numcodebreakpoints; TYPE_1__* codebreakpoint; } ;
struct TYPE_3__ {int addr; } ;

/* Variables and functions */
 TYPE_2__* ScuBP ; 
 int /*<<< orphan*/  FUNC0 () ; 

int FUNC1(u32 addr) {
   int i;

   if (ScuBP->numcodebreakpoints > 0) {
      for (i = 0; i < ScuBP->numcodebreakpoints; i++) {
         if (ScuBP->codebreakpoint[i].addr == addr)
         {
            ScuBP->codebreakpoint[i].addr = 0xFFFFFFFF;
            FUNC0();
            ScuBP->numcodebreakpoints--;
            return 0;
         }
      }
   }
   
   return -1;
}