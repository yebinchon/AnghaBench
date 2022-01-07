
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_bits_t ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int BITS_COPY16_PTR (int *,int ) ;
 unsigned int PS4_MAX_ORBISPADS ;
 int * pad_state ;

__attribute__((used)) static void ps4_joypad_get_buttons(unsigned port_num, input_bits_t *state)
{
 if (port_num < PS4_MAX_ORBISPADS)
   {
  BITS_COPY16_PTR( state, pad_state[port_num] );
 }
   else
      BIT256_CLEAR_ALL_PTR(state);
}
