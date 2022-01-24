#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp_buf ;
struct playlist_entry {char* path; char* label; char* core_name; char* db_name; } ;
typedef  int /*<<< orphan*/  playlist_t ;
struct TYPE_4__ {char* right_path; char* left_path; char* content_path; char* content_label; char* content_core_name; char* content_db_name; char* content_img; void* playlist_left_mode; void* playlist_right_mode; } ;
typedef  TYPE_1__ menu_thumbnail_path_data_t ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  PLAYLIST_THUMBNAIL_LEFT ; 
 void* PLAYLIST_THUMBNAIL_MODE_DEFAULT ; 
 int /*<<< orphan*/  PLAYLIST_THUMBNAIL_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,struct playlist_entry const**) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 

bool FUNC9(menu_thumbnail_path_data_t *path_data, playlist_t *playlist, size_t idx)
{
   const char *content_path  = NULL;
   const char *content_label = NULL;
   const char *core_name     = NULL;
   const char *db_name       = NULL;
   const struct playlist_entry *entry = NULL;
   
   if (!path_data)
      return false;
   
   /* When content is updated, must regenerate right/left
    * thumbnail paths */
   path_data->right_path[0]        = '\0';
   path_data->left_path[0]         = '\0';
   
   /* 'Reset' path_data content strings */
   path_data->content_path[0]      = '\0';
   path_data->content_label[0]     = '\0';
   path_data->content_core_name[0] = '\0';
   path_data->content_db_name[0]   = '\0';
   path_data->content_img[0]       = '\0';
   
   /* Must also reset playlist thumbnail display modes */
   path_data->playlist_right_mode  = PLAYLIST_THUMBNAIL_MODE_DEFAULT;
   path_data->playlist_left_mode   = PLAYLIST_THUMBNAIL_MODE_DEFAULT;
   
   if (!playlist)
      return false;
   
   if (idx >= FUNC4(playlist))
      return false;
   
   /* Read playlist values */
   FUNC3(playlist, idx, &entry);

   content_path  = entry->path;
   content_label = entry->label;
   core_name     = entry->core_name;
   db_name       = entry->db_name;

   /* Content without a path is invalid by definition */
   if (FUNC6(content_path))
      return false;
   
   /* Cache content path
    * (This is required for imageviewer, history and favourites content) */
   FUNC7(path_data->content_path,
            content_path, sizeof(path_data->content_path));
   
   /* Cache core name
    * (This is required for imageviewer content) */
   if (!FUNC6(core_name))
      FUNC7(path_data->content_core_name,
            core_name, sizeof(path_data->content_core_name));
   
   /* Get content label */
   if (!FUNC6(content_label))
      FUNC7(path_data->content_label,
            content_label, sizeof(path_data->content_label));
   else
      FUNC1(path_data->content_label,
            content_path, sizeof(path_data->content_label));
   
   /* Determine content image name */
   FUNC0(path_data);
   
   /* Redundant error check... */
   if (FUNC6(path_data->content_img))
      return false;
   
   /* Thumbnail image name is done -> now check if
    * per-content database name is defined */
   if (!FUNC6(db_name))
   {
      /* Hack: There is only one MAME thumbnail repo,
       * so filter any input starting with 'MAME...' */
      if (FUNC8(db_name, "MAME", 4) == 0)
         FUNC7(path_data->content_db_name, "MAME",
               sizeof(path_data->content_db_name));
      else
      {
         char *db_name_no_ext = NULL;
         char tmp_buf[PATH_MAX_LENGTH];
         tmp_buf[0] = '\0';
         
         /* Remove .lpl extension
          * > path_remove_extension() requires a char * (not const)
          *   so have to use a temporary buffer... */
         FUNC7(tmp_buf, db_name, sizeof(tmp_buf));
         db_name_no_ext = FUNC2(tmp_buf);
         
         if (!FUNC6(db_name_no_ext))
            FUNC7(path_data->content_db_name,
                  db_name_no_ext, sizeof(path_data->content_db_name));
         else
            FUNC7(path_data->content_db_name,
                  tmp_buf, sizeof(path_data->content_db_name));
      }
   }
   
   /* Playlist entry is valid -> it is now 'safe' to
    * extract any remaining playlist metadata
    * (i.e. thumbnail display modes) */
   path_data->playlist_right_mode =
         FUNC5(playlist, PLAYLIST_THUMBNAIL_RIGHT);
   path_data->playlist_left_mode =
         FUNC5(playlist, PLAYLIST_THUMBNAIL_LEFT);
   
   return true;
}