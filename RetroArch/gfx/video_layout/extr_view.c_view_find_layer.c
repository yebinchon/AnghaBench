
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int layers_count; TYPE_2__* layers; } ;
typedef TYPE_1__ view_t ;
struct TYPE_6__ {int name; } ;
typedef TYPE_2__ layer_t ;


 scalar_t__ strcmp (char const*,int ) ;

layer_t *view_find_layer(view_t *view, const char *name)
{
   int i;

   for (i = 0; i < view->layers_count; ++i)
   {
      if (strcmp(name, view->layers[i].name) == 0)
         return &view->layers[i];
   }

   return ((void*)0);
}
