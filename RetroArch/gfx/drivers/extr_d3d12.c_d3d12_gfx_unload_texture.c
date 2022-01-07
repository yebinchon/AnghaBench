
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int d3d12_video_t ;
typedef int d3d12_texture_t ;


 int d3d12_gfx_sync (int *) ;
 int d3d12_release_texture (int *) ;
 int free (int *) ;

__attribute__((used)) static void d3d12_gfx_unload_texture(void* data, uintptr_t handle)
{
   d3d12_texture_t* texture = (d3d12_texture_t*)handle;

   if (!texture)
      return;

   d3d12_gfx_sync((d3d12_video_t*)data);
   d3d12_release_texture(texture);
   free(texture);
}
