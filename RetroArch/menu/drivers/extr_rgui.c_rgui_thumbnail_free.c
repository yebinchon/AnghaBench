
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_valid; char* path; int * data; scalar_t__ height; scalar_t__ width; scalar_t__ max_height; scalar_t__ max_width; } ;
typedef TYPE_1__ thumbnail_t ;


 int free (int *) ;

__attribute__((used)) static void rgui_thumbnail_free(thumbnail_t *thumbnail)
{
   if (!thumbnail)
      return;

   thumbnail->max_width = 0;
   thumbnail->max_height = 0;
   thumbnail->width = 0;
   thumbnail->height = 0;
   thumbnail->is_valid = 0;
   thumbnail->path[0] = '\0';

   if (thumbnail->data)
      free(thumbnail->data);
   thumbnail->data = ((void*)0);
}
