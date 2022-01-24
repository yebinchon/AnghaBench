#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ vid; scalar_t__ pid; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int) ; 
 TYPE_1__* g_pads ; 
 scalar_t__* g_xinput_pad_indexes ; 

bool FUNC2(int32_t index, int32_t *vid, int32_t *pid, int32_t *dinput_index)
{
   int i;

   for (i = 0; i < FUNC0(g_xinput_pad_indexes); i++)
   {
      if (index == g_xinput_pad_indexes[i])
      {
         FUNC1("[DINPUT]: Found XInput pad at index %d (DINPUT index %d)\n", index, i);

         if (vid)
            *vid = g_pads[i].vid;

         if (pid)
            *pid = g_pads[i].pid;

         if (dinput_index)
            *dinput_index = i;

         return true;
      }
   }

   return false;
}