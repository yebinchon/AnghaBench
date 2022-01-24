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
struct TYPE_2__ {int /*<<< orphan*/  savestate_thumbnail; int /*<<< orphan*/  savestate_thumbnail_file_path; } ;
typedef  TYPE_1__ xmb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  menu_display_handle_savestate_thumbnail_upload ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *data)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;
   if (!xmb)
      return;

   if (FUNC0(xmb->savestate_thumbnail_file_path))
      FUNC1(xmb->savestate_thumbnail_file_path,
            FUNC2(), 0,
            menu_display_handle_savestate_thumbnail_upload, NULL);
   else
      FUNC3(&xmb->savestate_thumbnail);
}