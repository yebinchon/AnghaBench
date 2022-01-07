
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_joypad {int buttons; } ;
typedef int input_bits_t ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int BITS_COPY16_PTR (int *,int ) ;
 int * parport_pads ;

__attribute__((used)) static void parport_joypad_get_buttons(unsigned port, input_bits_t *state)
{
 const struct parport_joypad *pad = (const struct parport_joypad*)
      &parport_pads[port];

 if (pad)
   {
  BITS_COPY16_PTR(state, pad->buttons);
 }
   else
  BIT256_CLEAR_ALL_PTR(state);
}
