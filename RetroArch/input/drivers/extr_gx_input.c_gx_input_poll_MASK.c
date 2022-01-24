#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ mouse; TYPE_1__* joypad; } ;
typedef  TYPE_2__ gx_input_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* poll ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(void *data)
{
   gx_input_t *gx = (gx_input_t*)data;

   if (gx && gx->joypad)
   {
      gx->joypad->poll();
#ifdef HW_RVL
      if(gx->mouse)
         gx_input_poll_mouse(gx);
#endif
   }
}