
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * path; int * label; int * path_c; int * path_b; int * exts; } ;
typedef TYPE_1__ menu_displaylist_info_t ;


 int free (int *) ;

void menu_displaylist_info_free(menu_displaylist_info_t *info)
{
   if (!info)
      return;
   if (info->exts)
      free(info->exts);
   if (info->path_b)
      free(info->path_b);
   if (info->path_c)
      free(info->path_c);
   if (info->label)
      free(info->label);
   if (info->path)
      free(info->path);
   info->exts = ((void*)0);
   info->path_b = ((void*)0);
   info->path_c = ((void*)0);
   info->label = ((void*)0);
   info->path = ((void*)0);
}
