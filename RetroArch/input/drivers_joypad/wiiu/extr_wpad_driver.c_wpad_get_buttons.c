
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_bits_t ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 int BITS_COPY32_PTR (int *,int ) ;
 int button_state ;
 int wpad_query_pad (unsigned int) ;

__attribute__((used)) static void wpad_get_buttons(unsigned pad, input_bits_t *state)
{
   if (!wpad_query_pad(pad))
      BIT256_CLEAR_ALL_PTR(state);
   else
      BITS_COPY32_PTR(state, button_state);
}
