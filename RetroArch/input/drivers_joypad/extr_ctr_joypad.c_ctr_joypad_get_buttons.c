
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_bits_t ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int BITS_COPY16_PTR (int *,int ) ;
 unsigned int DEFAULT_MAX_PADS ;
 int pad_state ;

__attribute__((used)) static void ctr_joypad_get_buttons(unsigned port_num, input_bits_t *state)
{
 if (port_num < DEFAULT_MAX_PADS)
   {
  BITS_COPY16_PTR( state, pad_state );
 }
   else
  BIT256_CLEAR_ALL_PTR(state);
}
