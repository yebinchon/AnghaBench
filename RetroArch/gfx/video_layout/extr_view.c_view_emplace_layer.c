
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int layers_count; int * layers; } ;
typedef TYPE_1__ view_t ;
typedef int layer_t ;


 int layer_init (int *,char const*) ;
 int vec_size (void**,int,int) ;
 int * view_find_layer (TYPE_1__*,char const*) ;

layer_t *view_emplace_layer(view_t *view, const char *name)
{
   layer_t *layer = view_find_layer(view, name);

   if (!layer)
   {
      vec_size((void**)&view->layers, sizeof(layer_t), ++view->layers_count);

      layer = &view->layers[view->layers_count - 1];
      layer_init(layer, name);
   }

   return layer;
}
