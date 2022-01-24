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
struct TYPE_2__ {int /*<<< orphan*/  thumbnail_path_data; } ;
typedef  TYPE_1__ xmb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_THUMBNAIL_LEFT ; 
 int /*<<< orphan*/  MENU_THUMBNAIL_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static void FUNC4(void *data, unsigned i, char pos)
{
   xmb_handle_t *xmb     = (xmb_handle_t*)data;
   const char *core_name = NULL;

   if (!xmb)
      return;

   /* imageviewer content requires special treatment... */
   FUNC0(xmb->thumbnail_path_data, &core_name);
   if (FUNC3(core_name, "imageviewer"))
   {
      if ((pos == 'R') || (pos == 'L' && !FUNC1(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT)))
         FUNC2(xmb->thumbnail_path_data, pos == 'R' ? MENU_THUMBNAIL_RIGHT : MENU_THUMBNAIL_LEFT);
   }
   else
      FUNC2(xmb->thumbnail_path_data, pos == 'R' ? MENU_THUMBNAIL_RIGHT : MENU_THUMBNAIL_LEFT);
}