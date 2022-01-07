
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bitdepth; int blend_factor_max; int blend; } ;
typedef TYPE_1__ FrameRateContext ;


 scalar_t__ ARCH_X86 ;
 int BLEND_FACTOR_DEPTH (int) ;
 int blend_frames16_c ;
 int blend_frames8_c ;
 int ff_framerate_init_x86 (TYPE_1__*) ;

void ff_framerate_init(FrameRateContext *s)
{
    if (s->bitdepth == 8) {
        s->blend_factor_max = 1 << BLEND_FACTOR_DEPTH(8);
        s->blend = blend_frames8_c;
    } else {
        s->blend_factor_max = 1 << BLEND_FACTOR_DEPTH(16);
        s->blend = blend_frames16_c;
    }
    if (ARCH_X86)
        ff_framerate_init_x86(s);
}
