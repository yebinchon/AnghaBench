
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_disk_control_callback {unsigned int (* get_num_images ) () ;unsigned int (* get_image_index ) () ;} ;


 int MSG_GOT_INVALID_DISK_INDEX ;
 int RARCH_ERR (char*,int ) ;
 unsigned int UINT_MAX ;
 int command_event_disk_control_set_index (unsigned int) ;
 int msg_hash_to_str (int ) ;
 unsigned int stub1 () ;
 unsigned int stub2 () ;

__attribute__((used)) static void command_event_check_disk_prev(
      const struct retro_disk_control_callback *control)
{
   unsigned num_disks = 0;
   unsigned current = 0;
   bool disk_prev_enable = 0;

   if (!control || !control->get_num_images)
      return;
   if (!control->get_image_index)
      return;

   num_disks = control->get_num_images();
   current = control->get_image_index();
   disk_prev_enable = num_disks && num_disks != UINT_MAX;

   if (!disk_prev_enable)
   {
      RARCH_ERR("%s.\n", msg_hash_to_str(MSG_GOT_INVALID_DISK_INDEX));
      return;
   }

   if (current > 0)
      current--;
   command_event_disk_control_set_index(current);
}
