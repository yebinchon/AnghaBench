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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  disp; } ;

/* Variables and functions */
 int GRAPHICS_RESOURCE_HANDLE_TYPE_MAX ; 
 TYPE_1__ display ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* gx_contexts ; 
 int /*<<< orphan*/  gx_log_cat ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ inited ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int32_t FUNC6( void )
{
   int i;
   FUNC4(inited);

   FUNC3();

   for (i=0; i<GRAPHICS_RESOURCE_HANDLE_TYPE_MAX; i++)
      if (gx_contexts[i])
         FUNC0(display.disp,gx_contexts[i]);

   FUNC1(display.disp);
   FUNC2();
   FUNC5(&gx_log_cat);
   inited = 0;
   return 0;
}