
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ff_scene_sad_fn ;


 scalar_t__ ARCH_X86 ;
 int * ff_scene_sad16_c ;
 int * ff_scene_sad_c ;
 int * ff_scene_sad_get_fn_x86 (int) ;

ff_scene_sad_fn ff_scene_sad_get_fn(int depth)
{
    ff_scene_sad_fn sad = ((void*)0);
    if (ARCH_X86)
        sad = ff_scene_sad_get_fn_x86(depth);
    if (!sad) {
        if (depth == 8)
            sad = ff_scene_sad_c;
        if (depth == 16)
            sad = ff_scene_sad16_c;
    }
    return sad;
}
