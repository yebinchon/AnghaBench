
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_bits_t ;
struct TYPE_2__ {int * slots; } ;
typedef TYPE_1__ btstack_hid_t ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int pad_connection_get_buttons (int *,unsigned int,int *) ;

__attribute__((used)) static void btstack_hid_joypad_get_buttons(void *data, unsigned port,
      input_bits_t *state)
{
  btstack_hid_t *hid = (btstack_hid_t*)data;
  if (hid)
    pad_connection_get_buttons(&hid->slots[port], port, state);
  else
    BIT256_CLEAR_ALL_PTR(state);
}
