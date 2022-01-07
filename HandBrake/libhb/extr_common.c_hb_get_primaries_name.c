
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char * hb_get_primaries_name(int primaries)
{
    switch (primaries)
    {
        case 136:
            return "bt709";
        case 137:
            return "bt470m";
        case 135:
            return "bt470bg";
        case 128:
            return "smpte170m";
        case 132:
            return "smpte240m";
        case 131:
            return "smpte428";
        case 134:
            return "film";
        case 130:
            return "smpte431";
        case 129:
            return "smpte432";
        case 138:
            return "bt2020";
        case 133:
            return "jedec-p22";
        default:
            return ((void*)0);
    }
}
