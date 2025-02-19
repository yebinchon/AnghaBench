
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int layers_count; int screens_count; int * screens; TYPE_4__* layers; } ;
typedef TYPE_3__ view_t ;
typedef int video_layout_bounds_t ;
struct TYPE_11__ {int elements_count; TYPE_5__* elements; } ;
typedef TYPE_4__ layer_t ;
struct TYPE_12__ {int components_count; TYPE_6__* components; } ;
typedef TYPE_5__ element_t ;
struct TYPE_8__ {int index; } ;
struct TYPE_9__ {TYPE_1__ screen; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_2__ attr; } ;
typedef TYPE_6__ component_t ;


 int MAX (int,int ) ;
 scalar_t__ VIDEO_LAYOUT_C_SCREEN ;
 scalar_t__ calloc (int,int) ;
 int free (int *) ;

void view_count_screens(view_t *view)
{
   int i, j, k;
   int idx = -1;

   for (i = 0; i < view->layers_count; ++i)
   {
      layer_t *layer = &view->layers[i];
      for (j = 0; j < layer->elements_count; ++j)
      {
         element_t *elem = &layer->elements[j];
         for (k = 0; k < elem->components_count; ++k)
         {
            component_t *comp = &elem->components[k];
            if (comp->type == VIDEO_LAYOUT_C_SCREEN)
               idx = MAX(idx, comp->attr.screen.index);
         }
      }
   }

   if (view->screens_count)
   {
      free(view->screens);
      view->screens_count = 0;
   }

   if ((++idx))
   {
      view->screens = (video_layout_bounds_t*)calloc(idx, sizeof(video_layout_bounds_t));
      view->screens_count = idx;
   }
}
