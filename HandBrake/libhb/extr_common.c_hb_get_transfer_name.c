
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char * hb_get_transfer_name(int transfer)
{
    switch (transfer)
    {
        case 134:
            return "bt709";
        case 133:
            return "gamma22";
        case 132:
            return "gamma28";
        case 129:
            return "smpte170m";
        case 128:
            return "smpte240m";
        case 131:
            return "iec61966-2-1";
        case 130:
            return "iec61966-2-4";
        case 136:
            return "bt2020-10";
        case 135:
            return "bt2020-12";
        default:
            return ((void*)0);
    }
}
