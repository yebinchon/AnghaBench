
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_starting_bit_num_in_reg(int bit_start, int i_reg)
{
    return (i_reg == 0) ? bit_start % 32 : 0;
}
