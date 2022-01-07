
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp_buf ;
struct playlist_entry {char* path; char* label; char* core_name; char* db_name; } ;
typedef int playlist_t ;
struct TYPE_4__ {char* right_path; char* left_path; char* content_path; char* content_label; char* content_core_name; char* content_db_name; char* content_img; void* playlist_left_mode; void* playlist_right_mode; } ;
typedef TYPE_1__ menu_thumbnail_path_data_t ;


 int PATH_MAX_LENGTH ;
 int PLAYLIST_THUMBNAIL_LEFT ;
 void* PLAYLIST_THUMBNAIL_MODE_DEFAULT ;
 int PLAYLIST_THUMBNAIL_RIGHT ;
 int fill_content_img (TYPE_1__*) ;
 int fill_short_pathname_representation (char*,char const*,int) ;
 char* path_remove_extension (char*) ;
 int playlist_get_index (int *,size_t,struct playlist_entry const**) ;
 size_t playlist_get_size (int *) ;
 void* playlist_get_thumbnail_mode (int *,int ) ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

bool menu_thumbnail_set_content_playlist(menu_thumbnail_path_data_t *path_data, playlist_t *playlist, size_t idx)
{
   const char *content_path = ((void*)0);
   const char *content_label = ((void*)0);
   const char *core_name = ((void*)0);
   const char *db_name = ((void*)0);
   const struct playlist_entry *entry = ((void*)0);

   if (!path_data)
      return 0;



   path_data->right_path[0] = '\0';
   path_data->left_path[0] = '\0';


   path_data->content_path[0] = '\0';
   path_data->content_label[0] = '\0';
   path_data->content_core_name[0] = '\0';
   path_data->content_db_name[0] = '\0';
   path_data->content_img[0] = '\0';


   path_data->playlist_right_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;
   path_data->playlist_left_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;

   if (!playlist)
      return 0;

   if (idx >= playlist_get_size(playlist))
      return 0;


   playlist_get_index(playlist, idx, &entry);

   content_path = entry->path;
   content_label = entry->label;
   core_name = entry->core_name;
   db_name = entry->db_name;


   if (string_is_empty(content_path))
      return 0;



   strlcpy(path_data->content_path,
            content_path, sizeof(path_data->content_path));



   if (!string_is_empty(core_name))
      strlcpy(path_data->content_core_name,
            core_name, sizeof(path_data->content_core_name));


   if (!string_is_empty(content_label))
      strlcpy(path_data->content_label,
            content_label, sizeof(path_data->content_label));
   else
      fill_short_pathname_representation(path_data->content_label,
            content_path, sizeof(path_data->content_label));


   fill_content_img(path_data);


   if (string_is_empty(path_data->content_img))
      return 0;



   if (!string_is_empty(db_name))
   {


      if (strncmp(db_name, "MAME", 4) == 0)
         strlcpy(path_data->content_db_name, "MAME",
               sizeof(path_data->content_db_name));
      else
      {
         char *db_name_no_ext = ((void*)0);
         char tmp_buf[PATH_MAX_LENGTH];
         tmp_buf[0] = '\0';




         strlcpy(tmp_buf, db_name, sizeof(tmp_buf));
         db_name_no_ext = path_remove_extension(tmp_buf);

         if (!string_is_empty(db_name_no_ext))
            strlcpy(path_data->content_db_name,
                  db_name_no_ext, sizeof(path_data->content_db_name));
         else
            strlcpy(path_data->content_db_name,
                  tmp_buf, sizeof(path_data->content_db_name));
      }
   }




   path_data->playlist_right_mode =
         playlist_get_thumbnail_mode(playlist, PLAYLIST_THUMBNAIL_RIGHT);
   path_data->playlist_left_mode =
         playlist_get_thumbnail_mode(playlist, PLAYLIST_THUMBNAIL_LEFT);

   return 1;
}
