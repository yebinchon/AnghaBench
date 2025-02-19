
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int menu_linear_filter; } ;
struct TYPE_7__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {int menu_smooth; } ;
typedef TYPE_3__ gl1_t ;


 TYPE_2__* config_get_ptr () ;
 int free (unsigned char*) ;
 int gl1_context_bind_hw_render (TYPE_3__*,int) ;
 int gl1_menu_bits ;
 unsigned char* gl1_menu_frame ;
 unsigned int gl1_menu_height ;
 unsigned int gl1_menu_pitch ;
 int gl1_menu_size_changed ;
 unsigned int gl1_menu_width ;
 scalar_t__ malloc (unsigned int) ;
 int memcpy (unsigned char*,void const*,unsigned int) ;

__attribute__((used)) static void gl1_set_texture_frame(void *data,
      const void *frame, bool rgb32, unsigned width, unsigned height,
      float alpha)
{
   settings_t *settings = config_get_ptr();
   unsigned pitch = width * 2;
   gl1_t *gl1 = (gl1_t*)data;

   if (!gl1)
      return;

   gl1->menu_smooth = settings->bools.menu_linear_filter;

   gl1_context_bind_hw_render(gl1, 0);

   if (rgb32)
      pitch = width * 4;

   if (gl1_menu_frame)
   {
      free(gl1_menu_frame);
      gl1_menu_frame = ((void*)0);
   }

   if ( !gl1_menu_frame ||
         gl1_menu_width != width ||
         gl1_menu_height != height ||
         gl1_menu_pitch != pitch)
   {
      if (pitch && height)
      {
         if (gl1_menu_frame)
            free(gl1_menu_frame);


         gl1_menu_frame = (unsigned char*)malloc(pitch * height);
      }
   }

   if (gl1_menu_frame && frame && pitch && height)
   {
      memcpy(gl1_menu_frame, frame, pitch * height);
      gl1_menu_width = width;
      gl1_menu_height = height;
      gl1_menu_pitch = pitch;
      gl1_menu_bits = rgb32 ? 32 : 16;
      gl1_menu_size_changed = 1;
   }

   gl1_context_bind_hw_render(gl1, 1);
}
