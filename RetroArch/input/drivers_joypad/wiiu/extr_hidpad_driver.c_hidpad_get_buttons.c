
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_bits_t ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int HID_GET_BUTTONS (unsigned int,int *) ;
 int hidpad_query_pad (unsigned int) ;

__attribute__((used)) static void hidpad_get_buttons(unsigned pad, input_bits_t *state)
{
  if (!hidpad_query_pad(pad))
    BIT256_CLEAR_ALL_PTR(state);

  HID_GET_BUTTONS(pad, state);
}
