
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ff_scene_sad_fn ;


 scalar_t__ EXTERNAL_AVX2_FAST (int) ;
 scalar_t__ EXTERNAL_SSE2 (int) ;
 int av_get_cpu_flags () ;
 int * scene_sad_avx2 ;
 int * scene_sad_sse2 ;

ff_scene_sad_fn ff_scene_sad_get_fn_x86(int depth)
{
    return ((void*)0);
}
