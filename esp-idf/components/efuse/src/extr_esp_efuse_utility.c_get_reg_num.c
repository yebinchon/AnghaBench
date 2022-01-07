
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_reg_num(int bit_start, int bit_count, int i_reg)
{
    int num_reg = i_reg + bit_start / 32;

    if (num_reg > (bit_start + bit_count - 1) / 32) {
        return -1;
    }

    return num_reg;
}
