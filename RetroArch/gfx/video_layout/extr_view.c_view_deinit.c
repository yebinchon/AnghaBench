
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int layers_count; int * name; int * layers; int * screens; } ;
typedef TYPE_1__ view_t ;


 int free (int *) ;
 int layer_deinit (int *) ;

void view_deinit(view_t *view)
{
   int i;

   free(view->screens);

   for (i = 0; i < view->layers_count; ++i)
      layer_deinit(&view->layers[i]);

   free(view->layers);
   free(view->name);
}
