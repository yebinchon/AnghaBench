
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int ff_acelp_decode_6bit_to_2nd_delay6(
        int ac_index,
        int pitch_delay_min)
{
    return 6 * pitch_delay_min + ac_index - 3;
}
