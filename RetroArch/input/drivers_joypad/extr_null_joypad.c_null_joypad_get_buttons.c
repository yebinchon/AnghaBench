
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_bits_t ;


 int BIT256_CLEAR_ALL_PTR (int *) ;

__attribute__((used)) static void null_joypad_get_buttons(unsigned port_num, input_bits_t *state)
{
 BIT256_CLEAR_ALL_PTR(state);
}
