
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int views_count; int * views; } ;
typedef TYPE_1__ view_array_t ;


 int free (int *) ;
 int view_deinit (int *) ;

void view_array_deinit(view_array_t *view_array)
{
   int i;

   for (i = 0; i < view_array->views_count; ++i)
      view_deinit(&view_array->views[i]);
   free(view_array->views);
   view_array->views = ((void*)0);
   view_array->views_count = 0;
}
