#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct retro_disk_control_callback {unsigned int (* get_num_images ) () ;unsigned int (* get_image_index ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_GOT_INVALID_DISK_INDEX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 () ; 

__attribute__((used)) static void FUNC5(
      const struct retro_disk_control_callback *control)
{
   unsigned num_disks        = 0;
   unsigned current          = 0;
   bool     disk_next_enable = false;

   if (!control || !control->get_num_images)
      return;
   if (!control->get_image_index)
      return;

   num_disks        = control->get_num_images();
   current          = control->get_image_index();
   disk_next_enable = num_disks && num_disks != UINT_MAX;

   if (!disk_next_enable)
   {
      FUNC0("%s.\n", FUNC2(MSG_GOT_INVALID_DISK_INDEX));
      return;
   }

   if (current < num_disks - 1)
      current++;
   FUNC1(current);
}