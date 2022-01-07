
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int layers_count; TYPE_2__* layers; } ;
typedef TYPE_1__ view_t ;
struct TYPE_7__ {void* blend; } ;
typedef TYPE_2__ layer_t ;


 void* VIDEO_LAYOUT_BLEND_ADD ;
 void* VIDEO_LAYOUT_BLEND_ALPHA ;
 void* VIDEO_LAYOUT_BLEND_MOD ;
 TYPE_2__* view_find_layer (TYPE_1__*,char*) ;

void view_sort_layers(view_t *view)
{
   layer_t sorted[6];
   layer_t *layer;
   int i = 0;


   if ((layer = view_find_layer(view, "screen")))
   {
      layer->blend = VIDEO_LAYOUT_BLEND_MOD;
      sorted[i] = *layer;
      ++i;
   }

   if ((layer = view_find_layer(view, "overlay")))
   {
      layer->blend = VIDEO_LAYOUT_BLEND_MOD;
      sorted[i] = *layer;
      ++i;
   }

   if ((layer = view_find_layer(view, "backdrop")))
   {
      layer->blend = VIDEO_LAYOUT_BLEND_ADD;
      sorted[i] = *layer;
      ++i;
   }

   if ((layer = view_find_layer(view, "bezel")))
   {
      layer->blend = VIDEO_LAYOUT_BLEND_ALPHA;
      sorted[i] = *layer;
      ++i;
   }

   if ((layer = view_find_layer(view, "cpanel")))
   {
      layer->blend = VIDEO_LAYOUT_BLEND_ALPHA;
      sorted[i] = *layer;
      ++i;
   }

   if ((layer = view_find_layer(view, "marquee")))
   {
      layer->blend = VIDEO_LAYOUT_BLEND_ALPHA;
      sorted[i] = *layer;
      ++i;
   }

   for (i = 0; i < view->layers_count; ++i)
      view->layers[i] = sorted[i];
}
