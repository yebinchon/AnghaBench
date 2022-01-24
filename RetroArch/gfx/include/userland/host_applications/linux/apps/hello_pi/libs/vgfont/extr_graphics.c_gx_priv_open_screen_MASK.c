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
typedef  size_t uint32_t ;
typedef  int int32_t ;
struct TYPE_2__ {int* refcounts; scalar_t__* screens; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ DISPMANX_DISPLAY_HANDLE_T ;

/* Variables and functions */
 scalar_t__ DISPMANX_NO_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 TYPE_1__ gx ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int32_t FUNC4(uint32_t index, DISPMANX_DISPLAY_HANDLE_T *pscreen)
{
   int ret = -1;
   FUNC2(&gx.lock);

   if (gx.refcounts[index] != 0)
   {
      *pscreen = gx.screens[index];
      gx.refcounts[index]++;
      ret = 0;
   }
   else
   {
      DISPMANX_DISPLAY_HANDLE_T h = FUNC1(index);
      if (h == DISPMANX_NO_HANDLE)
      {
         FUNC0("Could not open dispmanx display %d", index);
         ret = -1;
         goto finish;
      }
      gx.screens[index] = h;
      gx.refcounts[index] = 1;
      *pscreen = h;
      ret = 0;
   }
finish:
   FUNC3(&gx.lock);
   return ret;
}