
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vita2d_texture {int dummy; } ;


 int vita2d_free_texture (struct vita2d_texture*) ;
 int vita2d_wait_rendering_done () ;

__attribute__((used)) static void vita_unload_texture(void *data, uintptr_t handle)
{
   struct vita2d_texture *texture = (struct vita2d_texture*)handle;
   if (!texture)
      return;



   vita2d_wait_rendering_done();
   vita2d_free_texture(texture);


}
