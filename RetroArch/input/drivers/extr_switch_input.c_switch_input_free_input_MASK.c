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
struct TYPE_5__ {unsigned int* sixaxis_handles_count; int /*<<< orphan*/ ** sixaxis_handles; TYPE_1__* joypad; } ;
typedef  TYPE_2__ switch_input_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) () ;} ;

/* Variables and functions */
 unsigned int DEFAULT_MAX_PADS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void *data)
{
   unsigned i,j;
   switch_input_t *sw = (switch_input_t*) data;

   if (sw)
   {
      if(sw->joypad)
         sw->joypad->destroy();

      for(i = 0; i < DEFAULT_MAX_PADS; i++)
         if(sw->sixaxis_handles_count[i] > 0)
            for(j = 0; j < sw->sixaxis_handles_count[i]; j++)
               FUNC2(sw->sixaxis_handles[i][j]);

      FUNC0(sw);
   }

#ifdef HAVE_LIBNX
   hidExit();
#endif
}