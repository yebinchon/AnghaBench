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
typedef  enum rotation { ____Placeholder_rotation } rotation ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_screen_orientation ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 TYPE_1__* current_display_server ; 
 int current_screen_orientation ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(enum rotation rotation)
{
   if (current_display_server && current_display_server->set_screen_orientation)
   {
      FUNC0("[Video]: Setting screen orientation to %d.\n", rotation);
      current_screen_orientation = rotation;
      current_display_server->set_screen_orientation(rotation);
   }
}