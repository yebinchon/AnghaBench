
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platform; } ;
 TYPE_1__ hb_cpu_info ;

const char* hb_get_cpu_platform_name()
{
    switch (hb_cpu_info.platform)
    {
        case 136:
            return "Intel microarchitecture Bonnell";
        case 128:
            return "Intel microarchitecture Sandy Bridge";
        case 132:
            return "Intel microarchitecture Ivy Bridge";
        case 129:
            return "Intel microarchitecture Silvermont";
        case 134:
            return "Intel microarchitecture Haswell";
        case 137:
            return "Intel microarchitecture Broadwell";
        case 130:
            return "Intel microarchitecture Skylake";
        case 135:
            return "Intel microarchitecture Airmont";
        case 131:
            return "Intel microarchitecture Kaby Lake";
        case 133:
            return "Intel microarchitecture Ice Lake";
        default:
            return ((void*)0);
    }
}
