
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * thumbnail_path_data; } ;
typedef TYPE_1__ rgui_t ;
struct TYPE_4__ {int * data; } ;


 int free (int *) ;
 int fs_thumbnail ;
 int mini_left_thumbnail ;
 int mini_thumbnail ;
 int rgui_background_free () ;
 int rgui_framebuffer_free () ;
 int rgui_thumbnail_free (int *) ;
 TYPE_2__ rgui_upscale_buf ;

__attribute__((used)) static void rgui_free(void *data)
{
   rgui_t *rgui = (rgui_t*)data;

   if (rgui)
   {
      if (rgui->thumbnail_path_data)
         free(rgui->thumbnail_path_data);
   }

   rgui_framebuffer_free();
   rgui_background_free();
   rgui_thumbnail_free(&fs_thumbnail);
   rgui_thumbnail_free(&mini_thumbnail);
   rgui_thumbnail_free(&mini_left_thumbnail);

   if (rgui_upscale_buf.data)
   {
      free(rgui_upscale_buf.data);
      rgui_upscale_buf.data = ((void*)0);
   }
}
