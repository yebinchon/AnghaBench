
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * path_c; int path; int * path_b; } ;
typedef TYPE_1__ menu_displaylist_info_t ;


 int DISPLAYLIST_DATABASE_QUERY ;
 int deferred_push_dlist (TYPE_1__*,int ) ;
 int free (int *) ;
 int * strdup (int ) ;
 int string_is_empty (int *) ;

__attribute__((used)) static int deferred_push_database_manager_list_deferred(
      menu_displaylist_info_t *info)
{
   if (!string_is_empty(info->path_b))
      free(info->path_b);
   if (!string_is_empty(info->path_c))
      free(info->path_c);

   info->path_b = strdup(info->path);
   info->path_c = ((void*)0);

   return deferred_push_dlist(info, DISPLAYLIST_DATABASE_QUERY);
}
