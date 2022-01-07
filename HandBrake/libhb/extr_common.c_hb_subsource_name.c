
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char * hb_subsource_name( int source )
{
    switch (source)
    {
        case 128:
            return "VOBSUB";
        case 134:
            return "SRT";
        case 136:
            return "CC608";
        case 135:
            return "CC708";
        case 129:
            return "UTF-8";
        case 130:
            return "TX3G";
        case 133:
        case 131:
            return "SSA";
        case 132:
            return "PGS";
        default:
            return "Unknown";
    }
}
