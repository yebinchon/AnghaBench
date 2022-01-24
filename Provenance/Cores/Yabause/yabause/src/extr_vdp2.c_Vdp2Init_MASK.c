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
typedef  int /*<<< orphan*/  Vdp2 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/ * Vdp2ColorRam ; 
 int /*<<< orphan*/ * Vdp2Ram ; 
 int /*<<< orphan*/ * Vdp2Regs ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int,int) ; 

int FUNC4(void) {
   if ((Vdp2Regs = (Vdp2 *) FUNC3(1, sizeof(Vdp2))) == NULL)
      return -1;

   if ((Vdp2Ram = FUNC0(0x80000)) == NULL)
      return -1;

   if ((Vdp2ColorRam = FUNC1(0x1000)) == NULL)
      return -1;

   FUNC2();
   return 0;
}