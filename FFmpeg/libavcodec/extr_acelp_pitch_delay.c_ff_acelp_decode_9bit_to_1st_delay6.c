
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int ff_acelp_decode_9bit_to_1st_delay6(int ac_index)
{
    if(ac_index < 463)
        return ac_index + 105;
    else
        return 6 * (ac_index - 368);
}
