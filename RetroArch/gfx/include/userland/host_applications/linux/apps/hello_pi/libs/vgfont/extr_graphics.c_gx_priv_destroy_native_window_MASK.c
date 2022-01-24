#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  element; } ;
struct TYPE_7__ {TYPE_1__ egl_win; } ;
struct TYPE_8__ {TYPE_2__ native_window; } ;
struct TYPE_9__ {int /*<<< orphan*/  screen_id; TYPE_3__ u; } ;
typedef  TYPE_4__ GRAPHICS_RESOURCE_HANDLE_TABLE_T ;
typedef  int /*<<< orphan*/  DISPMANX_UPDATE_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(GRAPHICS_RESOURCE_HANDLE_TABLE_T *res)
{
   DISPMANX_UPDATE_HANDLE_T current_update;

   if((current_update = FUNC2(0)) != 0)
   {
      int ret = FUNC1(current_update, res->u.native_window.egl_win.element);
      FUNC4(ret == 0);
      ret = FUNC3(current_update);
      FUNC4(ret == 0);
   }

   FUNC0(res->screen_id);
}