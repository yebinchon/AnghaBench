#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct PixelData {scalar_t__ priority; scalar_t__ pixel; } ;
typedef  scalar_t__ pixel_t ;
struct TYPE_4__ {int* layer_priority; int vdp2width; struct PixelData** vdp2framebuffer; TYPE_1__* backscreen; int /*<<< orphan*/  trans; int /*<<< orphan*/  inited; } ;
struct TYPE_3__ {scalar_t__ pixel; } ;

/* Variables and functions */
 int TITAN_BACK ; 
 int TITAN_RBG0 ; 
 size_t TITAN_SPRITE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 TYPE_2__ tt_context ; 

void FUNC3(pixel_t * dispbuffer, int start_line, int end_line)
{
   int x, y, i, layer, j, layer_y;
   int line_increment, interlace_line;
   int sorted_layers[8] = { 0 };
   int num_layers = 0;

   if (!tt_context.inited || (!tt_context.trans))
   {
      return;
   }

   FUNC1(&interlace_line, &line_increment);

   //pre-sort the layers so it doesn't have to be done per-pixel
   for (i = 7; i >= 0; i--)
   {
      for (layer = TITAN_RBG0; layer >= 0; layer--)
      {
         if (tt_context.layer_priority[layer] > 0 && tt_context.layer_priority[layer] == i)
            sorted_layers[num_layers++] = layer;
      }
   }

   //last layer is always the back screen
   sorted_layers[num_layers++] = TITAN_BACK;

   FUNC2(start_line, &layer_y);

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

            //if the top layer is the back screen
            if (bg_layer == TITAN_BACK)
            {
               //use a sprite pixel if it is not transparent
               if (sprite.pixel)
               {
                  dispbuffer[i] = FUNC0(sprite.pixel);
                  break;
               }
               else
               {
                  //otherwise use the back screen pixel
                  dispbuffer[i] = FUNC0(tt_context.backscreen[y].pixel);
                  break;
               }
            }
            //if the top layer is a sprite pixel
            else if (sprite.priority >= tt_context.layer_priority[bg_layer])
            {
               //use the sprite pixel if it is not transparent
               if (sprite.pixel)
               {
                  dispbuffer[i] = FUNC0(sprite.pixel);
                  break;
               }
            }
            else
            {
               //use the bg layer if it is not covered with a sprite pixel and not transparent
               if (tt_context.vdp2framebuffer[bg_layer][layer_pos].pixel)
               {
                  dispbuffer[i] = FUNC0(tt_context.vdp2framebuffer[bg_layer][layer_pos].pixel);
                  break;
               }
            }
         }
      }
      layer_y++;
   }
}