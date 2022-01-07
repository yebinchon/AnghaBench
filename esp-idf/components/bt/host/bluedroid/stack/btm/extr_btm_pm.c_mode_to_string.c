
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_PM_MODE ;







__attribute__((used)) static const char *mode_to_string(tBTM_PM_MODE mode)
{
    switch (mode) {
    case 131: return "ACTIVE";
    case 128: return "SNIFF";
    case 129: return "PARK";
    case 130: return "HOLD";
    default: return "UNKNOWN";
    }
}
