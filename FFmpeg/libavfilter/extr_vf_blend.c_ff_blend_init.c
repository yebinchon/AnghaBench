
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int opacity; scalar_t__ mode; void* blend; } ;
typedef TYPE_1__ FilterParams ;


 scalar_t__ ARCH_X86 ;
 scalar_t__ BLEND_NORMAL ;
 void* blend_copybottom_16 ;
 void* blend_copybottom_8 ;
 void* blend_copytop_16 ;
 void* blend_copytop_8 ;
 int ff_blend_init_x86 (TYPE_1__*,int) ;
 int init_blend_func_10_16bit (TYPE_1__*) ;
 int init_blend_func_12_16bit (TYPE_1__*) ;
 int init_blend_func_16_16bit (TYPE_1__*) ;
 int init_blend_func_8_8bit (TYPE_1__*) ;
 int init_blend_func_9_16bit (TYPE_1__*) ;

void ff_blend_init(FilterParams *param, int depth)
{
    switch (depth) {
    case 8:
        init_blend_func_8_8bit(param);
        break;
    case 9:
        init_blend_func_9_16bit(param);
        break;
    case 10:
        init_blend_func_10_16bit(param);
        break;
    case 12:
        init_blend_func_12_16bit(param);
        break;
    case 16:
        init_blend_func_16_16bit(param);
        break;
    }

    if (param->opacity == 0 && param->mode != BLEND_NORMAL) {
        param->blend = depth > 8 ? blend_copytop_16 : blend_copytop_8;
    } else if (param->mode == BLEND_NORMAL) {
        if (param->opacity == 1)
            param->blend = depth > 8 ? blend_copytop_16 : blend_copytop_8;
        else if (param->opacity == 0)
            param->blend = depth > 8 ? blend_copybottom_16 : blend_copybottom_8;
    }

    if (ARCH_X86)
        ff_blend_init_x86(param, depth);
}
