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
typedef  int /*<<< orphan*/  fpga_t ;
struct TYPE_3__ {int only_munmap; scalar_t__ only_mmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * fpga_menu_frame ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ regOp ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void *data)
{
   fpga_t *fpga = (fpga_t*)data;

   if (fpga_menu_frame)
   {
      FUNC2(fpga_menu_frame);
      fpga_menu_frame = NULL;
   }

   if (!fpga)
      return;

   FUNC1();
   FUNC3();

   FUNC2(fpga);

   regOp.only_mmap = 0;
   regOp.only_munmap = 1;

   FUNC0(&regOp);
}