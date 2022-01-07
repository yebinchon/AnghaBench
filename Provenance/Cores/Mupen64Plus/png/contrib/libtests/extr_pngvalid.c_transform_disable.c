
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* list; scalar_t__ enable; int name; } ;
typedef TYPE_1__ image_transform ;


 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 TYPE_1__ image_transform_end ;
 TYPE_1__* image_transform_first ;
 int stderr ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static void
transform_disable(const char *name)
{
   image_transform *list = image_transform_first;

   while (list != &image_transform_end)
   {
      if (strcmp(list->name, name) == 0)
      {
         list->enable = 0;
         return;
      }

      list = list->list;
   }

   fprintf(stderr, "pngvalid: --transform-disable=%s: unknown transform\n",
      name);
   exit(99);
}
