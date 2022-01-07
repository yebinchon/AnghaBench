
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct PixelData {scalar_t__ priority; scalar_t__ pixel; } ;
typedef scalar_t__ pixel_t ;
struct TYPE_4__ {int* layer_priority; int vdp2width; struct PixelData** vdp2framebuffer; TYPE_1__* backscreen; int trans; int inited; } ;
struct TYPE_3__ {scalar_t__ pixel; } ;


 int TITAN_BACK ;
 int TITAN_RBG0 ;
 size_t TITAN_SPRITE ;
 scalar_t__ TitanFixAlpha (scalar_t__) ;
 int Vdp2GetInterlaceInfo (int*,int*) ;
 int set_layer_y (int,int*) ;
 TYPE_2__ tt_context ;

void TitanRenderLinesSimplified(pixel_t * dispbuffer, int start_line, int end_line)
{
   int x, y, i, layer, j, layer_y;
   int line_increment, interlace_line;
   int sorted_layers[8] = { 0 };
   int num_layers = 0;

   if (!tt_context.inited || (!tt_context.trans))
   {
      return;
   }

   Vdp2GetInterlaceInfo(&interlace_line, &line_increment);


   for (i = 7; i >= 0; i--)
   {
      for (layer = TITAN_RBG0; layer >= 0; layer--)
      {
         if (tt_context.layer_priority[layer] > 0 && tt_context.layer_priority[layer] == i)
            sorted_layers[num_layers++] = layer;
      }
   }


   sorted_layers[num_layers++] = TITAN_BACK;

   set_layer_y(start_line, &layer_y);

   for (y = start_line + interlace_line; y < end_line; y += line_increment)
   {
      for (x = 0; x < tt_context.vdp2width; x++)
      {
         int layer_pos = (layer_y * tt_context.vdp2width) + x;
         i = (y * tt_context.vdp2width) + x;

         dispbuffer[i] = 0;

         for (j = 0; j < num_layers; j++)
         {
            struct PixelData sprite = tt_context.vdp2framebuffer[TITAN_SPRITE][layer_pos];

            int bg_layer = sorted_layers[j];


            if (bg_layer == TITAN_BACK)
            {

               if (sprite.pixel)
               {
                  dispbuffer[i] = TitanFixAlpha(sprite.pixel);
                  break;
               }
               else
               {

                  dispbuffer[i] = TitanFixAlpha(tt_context.backscreen[y].pixel);
                  break;
               }
            }

            else if (sprite.priority >= tt_context.layer_priority[bg_layer])
            {

               if (sprite.pixel)
               {
                  dispbuffer[i] = TitanFixAlpha(sprite.pixel);
                  break;
               }
            }
            else
            {

               if (tt_context.vdp2framebuffer[bg_layer][layer_pos].pixel)
               {
                  dispbuffer[i] = TitanFixAlpha(tt_context.vdp2framebuffer[bg_layer][layer_pos].pixel);
                  break;
               }
            }
         }
      }
      layer_y++;
   }
}
