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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {scalar_t__* refcounts; int /*<<< orphan*/  lock; int /*<<< orphan*/ * screens; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPMANX_NO_HANDLE ; 
 TYPE_1__ gx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int32_t FUNC3(uint32_t index)
{
   FUNC1(&gx.lock);
   gx.refcounts[index]--;
   if (gx.refcounts[index] == 0)
   {
      FUNC0(gx.screens[index]);
      gx.screens[index] = DISPMANX_NO_HANDLE;
   }
   FUNC2(&gx.lock);
   return 0;
}