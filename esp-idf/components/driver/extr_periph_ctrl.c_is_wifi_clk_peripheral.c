
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int periph_module_t ;
__attribute__((used)) static bool is_wifi_clk_peripheral(periph_module_t periph)
{


    switch(periph) {
    case 130:
    case 131:
    case 133:
    case 132:
    case 128:
    case 134:
    case 129:
    case 136:
    case 135:
        return 1;
    default:
        return 0;
    }
}
