
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int slots; } ;
typedef TYPE_1__ btstack_hid_t ;


 int btpad_set_inquiry_state (int) ;
 int btstack_set_poweron (int) ;
 int free (TYPE_1__*) ;
 int pad_connection_destroy (int ) ;

__attribute__((used)) static void btstack_hid_free(const void *data)
{
   btstack_hid_t *hid = (btstack_hid_t*)data;

   if (!hid)
      return;

   pad_connection_destroy(hid->slots);
   btpad_set_inquiry_state(1);
   btstack_set_poweron(0);

   if (hid)
      free(hid);
}
