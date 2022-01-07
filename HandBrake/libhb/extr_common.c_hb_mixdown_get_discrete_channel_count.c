
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int hb_mixdown_get_discrete_channel_count(int amixdown)
{
    switch (amixdown)
    {
        case 134:
        case 132:
            return 8;

        case 133:
            return 7;

        case 135:
            return 6;

        case 130:
        case 131:
        case 128:
            return 1;

        case 129:
            return 0;

        default:
            return 2;
    }
}
