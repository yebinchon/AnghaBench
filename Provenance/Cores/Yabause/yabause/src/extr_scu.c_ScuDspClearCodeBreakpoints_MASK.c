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
struct TYPE_4__ {scalar_t__ numcodebreakpoints; TYPE_1__* codebreakpoint; } ;
struct TYPE_3__ {int addr; } ;

/* Variables and functions */
 int MAX_BREAKPOINTS ; 
 TYPE_2__* ScuBP ; 

void FUNC0(void) {
   int i;
   for (i = 0; i < MAX_BREAKPOINTS; i++)
      ScuBP->codebreakpoint[i].addr = 0xFFFFFFFF;

   ScuBP->numcodebreakpoints = 0;
}