
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * texture; } ;
struct TYPE_4__ {int * texture; TYPE_1__ menu; } ;
typedef TYPE_2__ vita_video_t ;


 int font_driver_free_osd () ;
 int vita2d_fini () ;
 int vita2d_free_texture (int *) ;

__attribute__((used)) static void vita2d_gfx_free(void *data)
{
   vita_video_t *vita = (vita_video_t *)data;

   vita2d_fini();

   if (vita->menu.texture)
   {
      vita2d_free_texture(vita->menu.texture);
      vita->menu.texture = ((void*)0);
   }

   if (vita->texture)
   {
      vita2d_free_texture(vita->texture);
      vita->texture = ((void*)0);
   }

   font_driver_free_osd();
}
