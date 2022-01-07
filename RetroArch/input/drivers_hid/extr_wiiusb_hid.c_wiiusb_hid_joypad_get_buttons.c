
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * connections; } ;
typedef TYPE_1__ wiiusb_hid_t ;
typedef int input_bits_t ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int pad_connection_get_buttons (int *,unsigned int,int *) ;

__attribute__((used)) static void wiiusb_hid_joypad_get_buttons(void *data,
      unsigned port, input_bits_t *state)
{
  wiiusb_hid_t *hid = (wiiusb_hid_t*)data;
  if (hid)
  {
    pad_connection_get_buttons(&hid->connections[port], port, state);
    return;
  }
  BIT256_CLEAR_ALL_PTR(state);
}
