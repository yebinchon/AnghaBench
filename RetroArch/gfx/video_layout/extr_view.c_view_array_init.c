
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int view_t ;
struct TYPE_3__ {int views_count; int * views; } ;
typedef TYPE_1__ view_array_t ;


 int * calloc (int,int) ;

void view_array_init(view_array_t *view_array, int views_count)
{
   view_array->views = (view_t*)(views_count > 0 ?
      calloc(views_count, sizeof(view_t)) : ((void*)0));
   view_array->views_count = views_count;
}
