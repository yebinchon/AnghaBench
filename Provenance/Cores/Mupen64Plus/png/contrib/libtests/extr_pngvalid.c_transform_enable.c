
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enable; struct TYPE_4__* list; int name; } ;
typedef TYPE_1__ image_transform ;


 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 TYPE_1__ image_transform_end ;
 TYPE_1__* image_transform_first ;
 int stderr ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static void
transform_enable(const char *name)
{



   static int all_disabled = 0;
   int found_it = 0;
   image_transform *list = image_transform_first;

   while (list != &image_transform_end)
   {
      if (strcmp(list->name, name) == 0)
      {
         list->enable = 1;
         found_it = 1;
      }
      else if (!all_disabled)
         list->enable = 0;

      list = list->list;
   }

   all_disabled = 1;

   if (!found_it)
   {
      fprintf(stderr, "pngvalid: --transform-enable=%s: unknown transform\n",
         name);
      exit(99);
   }
}
