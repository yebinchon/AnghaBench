
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int elements_count; int * name; int * elements; } ;
typedef TYPE_1__ layer_t ;


 int element_deinit (int *) ;
 int free (int *) ;

void layer_deinit(layer_t *layer)
{
   int i;

   for (i = 0; i < layer->elements_count; ++i)
      element_deinit(&layer->elements[i]);

   free(layer->elements);
   free(layer->name);
}
