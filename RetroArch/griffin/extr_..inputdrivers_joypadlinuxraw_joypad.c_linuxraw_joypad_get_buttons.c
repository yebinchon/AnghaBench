
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linuxraw_joypad {int buttons; } ;
typedef int input_bits_t ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int BITS_COPY16_PTR (int *,int ) ;
 int * linuxraw_pads ;

__attribute__((used)) static void linuxraw_joypad_get_buttons(unsigned port, input_bits_t *state)
{
 const struct linuxraw_joypad *pad = (const struct linuxraw_joypad*)
      &linuxraw_pads[port];

 if (pad)
   {
  BITS_COPY16_PTR(state, pad->buttons);
 }
   else
  BIT256_CLEAR_ALL_PTR(state);
}
