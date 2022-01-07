
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; int staging; int view; } ;
typedef TYPE_1__ d3d11_texture_t ;


 int Release (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void d3d11_gfx_unload_texture(void* data, uintptr_t handle)
{
   d3d11_texture_t* texture = (d3d11_texture_t*)handle;

   if (!texture)
      return;

   Release(texture->view);
   Release(texture->staging);
   Release(texture->handle);
   free(texture);
}
