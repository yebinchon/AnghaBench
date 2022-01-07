
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidpad_nesusb_data {int buttons; } ;
typedef int input_bits_t ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int BITS_COPY16_PTR (int *,int ) ;

__attribute__((used)) static void hidpad_nesusb_get_buttons(void *data, input_bits_t* state)
{
 struct hidpad_nesusb_data *device = (struct hidpad_nesusb_data*)data;
 if (device)
   {
  BITS_COPY16_PTR(state, device->buttons);
 }
   else
  BIT256_CLEAR_ALL_PTR(state);
}
