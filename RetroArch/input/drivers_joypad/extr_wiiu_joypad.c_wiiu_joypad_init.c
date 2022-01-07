
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int max_slot; int pad_list; } ;
struct TYPE_7__ {int (* init ) (void*) ;} ;
struct TYPE_6__ {int (* init ) (void*) ;} ;
struct TYPE_5__ {int (* init ) (void*) ;} ;


 int MAX_USERS ;
 TYPE_4__ hid_instance ;
 TYPE_3__ hidpad_driver ;
 TYPE_2__ kpad_driver ;
 int pad_connection_init (int ) ;
 int ready ;
 int set_connection_listener (int *) ;
 int stub1 (void*) ;
 int stub2 (void*) ;
 int stub3 (void*) ;
 int wiiu_pad_connection_listener ;
 TYPE_1__ wpad_driver ;

__attribute__((used)) static bool wiiu_joypad_init(void* data)
{
   set_connection_listener(&wiiu_pad_connection_listener);
   hid_instance.pad_list = pad_connection_init(MAX_USERS);
   hid_instance.max_slot = MAX_USERS;

   wpad_driver.init(data);
   kpad_driver.init(data);




   ready = 1;
   (void)data;

   return 1;
}
