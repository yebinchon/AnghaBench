
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pad_list; } ;
struct TYPE_3__ {int connected; } ;


 TYPE_2__ hid_instance ;
 int input_pad_connect (int,int *) ;
 int pad_connection_find_vacant_pad (TYPE_1__*) ;
 int wpad_driver ;
 int wpad_poll () ;
 int wpad_ready ;

__attribute__((used)) static bool wpad_init(void *data)
{
   int slot = pad_connection_find_vacant_pad(hid_instance.pad_list);
   if(slot < 0)
      return 0;

   hid_instance.pad_list[slot].connected = 1;
   input_pad_connect(slot, &wpad_driver);
   wpad_poll();
   wpad_ready = 1;

   return 1;
}
