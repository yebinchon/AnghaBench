
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct retro_hw_ps2_insets {float left; float right; float top; float bottom; } ;
struct TYPE_8__ {float Width; float Height; } ;
struct TYPE_7__ {float Width; float Height; } ;
typedef TYPE_1__ GSTEXTURE ;
typedef TYPE_2__ GSGLOBAL ;


 int GS_TEXT ;
 float MIN (float,float) ;
 int gsKit_prim_sprite_texture (TYPE_2__*,TYPE_1__*,float,float,float,float,float,float,float,float,int,int ) ;

__attribute__((used)) static void prim_texture(GSGLOBAL *gsGlobal, GSTEXTURE *texture, int zPosition, bool force_aspect, struct retro_hw_ps2_insets padding)
{
      float x1, y1, x2, y2;
      float visible_width = texture->Width - padding.left - padding.right;
      float visible_height = texture->Height - padding.top - padding.bottom;
   if (force_aspect) {
      float width_proportion = (float)gsGlobal->Width / (float)visible_width;
      float height_proportion = (float)gsGlobal->Height / (float)visible_height;
      float delta = MIN(width_proportion, height_proportion);
      float newWidth = visible_width * delta;
      float newHeight = visible_height * delta;

      x1 = (gsGlobal->Width - newWidth) / 2.0f;
      y1 = (gsGlobal->Height - newHeight) / 2.0f;
      x2 = newWidth + x1;
      y2 = newHeight + y1;

   } else {
      x1 = 0.0f;
      y1 = 0.0f;
      x2 = gsGlobal->Width;
      y2 = gsGlobal->Height;
   }

   gsKit_prim_sprite_texture( gsGlobal, texture,
                              x1,
                              y1,
                              padding.left,
                              padding.top,
                              x2,
                              y2,
                              texture->Width - padding.right,
                              texture->Height - padding.bottom,
                              zPosition,
                              GS_TEXT);
}
