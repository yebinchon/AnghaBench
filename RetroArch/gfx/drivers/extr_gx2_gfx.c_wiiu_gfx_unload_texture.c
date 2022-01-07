
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int image; } ;
struct TYPE_5__ {TYPE_1__ surface; } ;
typedef TYPE_2__ GX2Texture ;


 int MEM2_free (int ) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void wiiu_gfx_unload_texture(void *data, uintptr_t handle)
{
   GX2Texture *texture = (GX2Texture *)handle;

   if (!texture)
      return;

   MEM2_free(texture->surface.image);
   free(texture);
}
