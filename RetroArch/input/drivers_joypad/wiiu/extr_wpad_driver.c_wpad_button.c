
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int UINT64_C (int) ;
 int button_state ;
 int wpad_query_pad (unsigned int) ;

__attribute__((used)) static bool wpad_button(unsigned pad, uint16_t button_bit)
{
   if (!wpad_query_pad(pad))
      return 0;

   return button_state & (UINT64_C(1) << button_bit);
}
