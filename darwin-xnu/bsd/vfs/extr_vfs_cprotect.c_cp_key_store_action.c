
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
struct TYPE_2__ {int valid_uuid; int volume_uuid; int state; } ;
typedef TYPE_1__ cp_lock_vfs_callback_arg ;
typedef int cp_key_store_action_t ;




 int CP_LOCKED_STATE ;
 int CP_UNLOCKED_STATE ;
 int cp_lock_vfs_callback ;
 int memset (int ,int ,int) ;
 int vfs_iterate (int ,int ,void*) ;

int
cp_key_store_action(cp_key_store_action_t action)
{
 cp_lock_vfs_callback_arg callback_arg;

 switch (action) {
  case 129:
  case 128:
   callback_arg.state = (action == 129 ? CP_LOCKED_STATE : CP_UNLOCKED_STATE);
   memset(callback_arg.volume_uuid, 0, sizeof(uuid_t));
   callback_arg.valid_uuid = 0;
   return vfs_iterate(0, cp_lock_vfs_callback, (void *)&callback_arg);
  default:
   return -1;
 }
}
