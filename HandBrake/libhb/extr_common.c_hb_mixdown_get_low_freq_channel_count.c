
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int hb_mixdown_get_low_freq_channel_count(int amixdown)
{
    switch (amixdown)
    {
        case 131:
        case 129:
        case 128:
        case 130:
            return 1;

        default:
            return 0;
    }
}
