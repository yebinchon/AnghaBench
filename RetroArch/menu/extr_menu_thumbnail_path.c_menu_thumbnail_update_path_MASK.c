#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp_buf ;
struct TYPE_9__ {char* directory_thumbnails; } ;
struct TYPE_10__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_11__ {char* right_path; char* left_path; char* content_path; char* content_img; char* system; char* content_db_name; char const* content_core_name; } ;
typedef  TYPE_3__ menu_thumbnail_path_data_t ;
typedef  enum menu_thumbnail_id { ____Placeholder_menu_thumbnail_id } menu_thumbnail_id ;
typedef  int /*<<< orphan*/  content_dir ;

/* Variables and functions */
#define  MENU_THUMBNAIL_LEFT 129 
#define  MENU_THUMBNAIL_RIGHT 128 
 int PATH_MAX_LENGTH ; 
 scalar_t__ RARCH_CONTENT_IMAGE ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int) ; 
 char* FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

bool FUNC9(menu_thumbnail_path_data_t *path_data, enum menu_thumbnail_id thumbnail_id)
{
   settings_t *settings    = FUNC0();
   const char *type        = FUNC3(path_data, thumbnail_id);
   const char *system_name = NULL;
   char *thumbnail_path    = NULL;
   char content_dir[PATH_MAX_LENGTH];
   
   if (!path_data)
      return false;
   
   /* Determine which path we are updating... */
   switch (thumbnail_id)
   {
      case MENU_THUMBNAIL_RIGHT:
         thumbnail_path = path_data->right_path;
         break;
      case MENU_THUMBNAIL_LEFT:
         thumbnail_path = path_data->left_path;
         break;
      default:
         return false;
   }
   
   thumbnail_path[0] = '\0';
   content_dir[0]    = '\0';
   
   /* Sundry error checking */
   if (!settings)
      return false;
   
   if (FUNC6(settings->paths.directory_thumbnails))
      return false;
   
   if (!FUNC4(path_data, thumbnail_id))
      return false;
   
   /* Generate new path */
   
   /* > Check path_data for empty strings */
   if (FUNC6(path_data->content_path) ||
       FUNC6(path_data->content_img) ||
         (FUNC6(path_data->system) &&
          FUNC6(path_data->content_db_name)))
      return false;
   
   /* > Get current system */
   if (FUNC6(path_data->content_db_name))
   {
      /* If this is a content history or favorites playlist
       * then the current 'path_data->system' string is
       * meaningless. In this case, we fall back to the
       * content directory name */
      if (FUNC7(path_data->system, "history") ||
          FUNC7(path_data->system, "favorites"))
      {
         if (!FUNC2(
                  path_data, content_dir, sizeof(content_dir)))
            return false;
         
         system_name = content_dir;
      }
      else
         system_name = path_data->system;
   }
   else
      system_name = path_data->content_db_name;
   
   /* > Special case: thumbnail for imageviewer content
    *   is the image file itself */
   if (FUNC7(system_name, "images_history") ||
       FUNC7(path_data->content_core_name, "imageviewer"))
   {
      /* imageviewer content is identical for left and right thumbnails */
      if (FUNC5(path_data->content_path) == RARCH_CONTENT_IMAGE)
         FUNC8(thumbnail_path,
            path_data->content_path, PATH_MAX_LENGTH * sizeof(char));
   }
   else
   {
      char tmp_buf[PATH_MAX_LENGTH];
      tmp_buf[0] = '\0';
      
      /* > Normal content: assemble path */
      
      /* >> Base + system name */
      FUNC1(thumbnail_path, settings->paths.directory_thumbnails,
            system_name, PATH_MAX_LENGTH * sizeof(char));
      
      /* >> Add type */
      FUNC1(tmp_buf, thumbnail_path, type, sizeof(tmp_buf));
      
      /* >> Add content image */
      thumbnail_path[0] = '\0';
      FUNC1(thumbnail_path, tmp_buf,
            path_data->content_img, PATH_MAX_LENGTH * sizeof(char));
   }
   
   /* Final error check - is cached path empty? */
   if (FUNC6(thumbnail_path))
      return false;
   
   return true;
}