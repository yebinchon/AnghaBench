
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_bits_t ;
typedef int cocoa_input_data_t ;


 scalar_t__ BIT256_GET_PTR (int *,unsigned int) ;

__attribute__((used)) static int cocoa_input_find_any_button_ret(cocoa_input_data_t *apple,
   input_bits_t * state, unsigned port)
{
   unsigned i;

   if (state)
      for (i = 0; i < 256; i++)
         if (BIT256_GET_PTR(state,i))
            return i;
   return -1;
}
