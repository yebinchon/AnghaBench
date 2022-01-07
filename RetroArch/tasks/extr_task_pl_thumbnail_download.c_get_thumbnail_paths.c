
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp_buf ;
typedef int raw_url ;
struct TYPE_3__ {char* dir_thumbnails; int thumbnail_path_data; int type_idx; } ;
typedef TYPE_1__ pl_thumb_handle_t ;
typedef int content_dir ;


 int FILE_PATH_CORE_THUMBNAILS_URL ;
 int PATH_MAX_LENGTH ;
 int file_path_str (int ) ;
 int fill_pathname_join (char*,char*,char const*,size_t) ;
 int menu_thumbnail_get_content_dir (int ,char*,int) ;
 int menu_thumbnail_get_db_name (int ,char const**) ;
 int menu_thumbnail_get_img_name (int ,char const**) ;
 int menu_thumbnail_get_sub_directory (int ,char const**) ;
 int menu_thumbnail_get_system (int ,char const**) ;
 int net_http_urlencode_full (char*,char*,size_t) ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,char*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static bool get_thumbnail_paths(
   pl_thumb_handle_t *pl_thumb,
   char *path, size_t path_size,
   char *url, size_t url_size)
{
   const char *system = ((void*)0);
   const char *db_name = ((void*)0);
   const char *img_name = ((void*)0);
   const char *sub_dir = ((void*)0);
   const char *system_name = ((void*)0);
   char content_dir[PATH_MAX_LENGTH];
   char raw_url[2048];
   char tmp_buf[PATH_MAX_LENGTH];

   content_dir[0] = '\0';
   raw_url[0] = '\0';
   tmp_buf[0] = '\0';

   if (!pl_thumb->thumbnail_path_data)
      return 0;

   if (string_is_empty(pl_thumb->dir_thumbnails))
      return 0;


   menu_thumbnail_get_system(pl_thumb->thumbnail_path_data, &system);
   menu_thumbnail_get_db_name(pl_thumb->thumbnail_path_data, &db_name);
   if (!menu_thumbnail_get_img_name(pl_thumb->thumbnail_path_data, &img_name))
      return 0;
   if (!menu_thumbnail_get_sub_directory(pl_thumb->type_idx, &sub_dir))
      return 0;


   if (string_is_empty(db_name))
   {
      if (string_is_empty(system))
         return 0;





      if (string_is_equal(system, "history") ||
          string_is_equal(system, "favorites"))
      {
         if (!menu_thumbnail_get_content_dir(
               pl_thumb->thumbnail_path_data, content_dir, sizeof(content_dir)))
            return 0;

         system_name = content_dir;
      }
      else
         system_name = system;
   }
   else
      system_name = db_name;


   fill_pathname_join(path, pl_thumb->dir_thumbnails,
         system_name, path_size);
   fill_pathname_join(tmp_buf, path, sub_dir, sizeof(tmp_buf));
   fill_pathname_join(path, tmp_buf, img_name, path_size);

   if (string_is_empty(path))
      return 0;


   strlcpy(raw_url, file_path_str(FILE_PATH_CORE_THUMBNAILS_URL), sizeof(raw_url));
   strlcat(raw_url, "/", sizeof(raw_url));
   strlcat(raw_url, system_name, sizeof(raw_url));
   strlcat(raw_url, "/", sizeof(raw_url));
   strlcat(raw_url, sub_dir, sizeof(raw_url));
   strlcat(raw_url, "/", sizeof(raw_url));
   strlcat(raw_url, img_name, sizeof(raw_url));

   if (string_is_empty(raw_url))
      return 0;

   net_http_urlencode_full(url, raw_url, url_size);

   if (string_is_empty(url))
      return 0;

   return 1;
}
