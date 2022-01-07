
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int interp; int remap_line; } ;
typedef TYPE_1__ V360Context ;


 scalar_t__ ARCH_X86 ;




 int ff_v360_init_x86 (TYPE_1__*,int) ;
 int remap1_16bit_line_c ;
 int remap1_8bit_line_c ;
 int remap2_16bit_line_c ;
 int remap2_8bit_line_c ;
 int remap4_16bit_line_c ;
 int remap4_8bit_line_c ;

void ff_v360_init(V360Context *s, int depth)
{
    switch (s->interp) {
    case 128:
        s->remap_line = depth <= 8 ? remap1_8bit_line_c : remap1_16bit_line_c;
        break;
    case 130:
        s->remap_line = depth <= 8 ? remap2_8bit_line_c : remap2_16bit_line_c;
        break;
    case 131:
    case 129:
        s->remap_line = depth <= 8 ? remap4_8bit_line_c : remap4_16bit_line_c;
        break;
    }

    if (ARCH_X86)
        ff_v360_init_x86(s, depth);
}
