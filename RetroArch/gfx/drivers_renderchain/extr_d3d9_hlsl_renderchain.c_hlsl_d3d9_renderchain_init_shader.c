
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hlsl_renderchain_t ;
typedef int d3d9_video_t ;


 int RARCH_LOG (char*) ;

__attribute__((used)) static bool hlsl_d3d9_renderchain_init_shader(d3d9_video_t *d3d,
      hlsl_renderchain_t *chain)
{
   RARCH_LOG("[D3D9]: Using HLSL shader backend.\n");

   return 1;
}
