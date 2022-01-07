
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char * hb_get_color_range_name(int range)
{
    switch (range)
    {
        case 128:
            return "mpeg";
        case 129:
            return "jpeg";
        default:
            return "mpeg";
    }
}
