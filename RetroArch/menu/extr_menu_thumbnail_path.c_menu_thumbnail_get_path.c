
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* right_path; char* left_path; } ;
typedef TYPE_1__ menu_thumbnail_path_data_t ;
typedef enum menu_thumbnail_id { ____Placeholder_menu_thumbnail_id } menu_thumbnail_id ;




 scalar_t__ string_is_empty (char*) ;

bool menu_thumbnail_get_path(
      menu_thumbnail_path_data_t *path_data,
      enum menu_thumbnail_id thumbnail_id, const char **path)
{
   char *thumbnail_path = ((void*)0);

   if (!path_data)
      return 0;

   if (!path)
      return 0;

   switch (thumbnail_id)
   {
      case 128:
         thumbnail_path = path_data->right_path;
         break;
      case 129:
         thumbnail_path = path_data->left_path;
         break;
      default:
         return 0;
   }

   if (string_is_empty(thumbnail_path))
      return 0;

   *path = thumbnail_path;

   return 1;
}
