#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* right_path; char* left_path; char* content_path; char* content_label; char* content_core_name; char* content_db_name; char* content_img; void* playlist_left_mode; void* playlist_right_mode; } ;
typedef  TYPE_1__ menu_thumbnail_path_data_t ;

/* Variables and functions */
 void* PLAYLIST_THUMBNAIL_MODE_DEFAULT ; 
 scalar_t__ RARCH_CONTENT_IMAGE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

bool FUNC5(
      menu_thumbnail_path_data_t *path_data,
      const char *img_dir, const char *img_name)
{
   char *content_img_no_ext = NULL;
   
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
   
   if (FUNC3(img_dir))
      return false;
   
   if (FUNC3(img_name))
      return false;
   
   if (FUNC1(img_name) != RARCH_CONTENT_IMAGE)
      return false;
   
   /* Cache content image name */
   FUNC4(path_data->content_img,
            img_name, sizeof(path_data->content_img));
   
   /* Get image label */
   content_img_no_ext = FUNC2(path_data->content_img);
   if (!FUNC3(content_img_no_ext))
      FUNC4(path_data->content_label,
            content_img_no_ext, sizeof(path_data->content_label));
   else
      FUNC4(path_data->content_label,
            path_data->content_img, sizeof(path_data->content_label));
   
   /* Set file path */
   FUNC0(path_data->content_path,
      img_dir, img_name, sizeof(path_data->content_path));
   
   /* Set core name to "imageviewer" */
   FUNC4(
         path_data->content_core_name,
         "imageviewer", sizeof(path_data->content_core_name));
   
   /* Set database name (arbitrarily) to "_images_"
    * (required for compatibility with menu_thumbnail_update_path(),
    * but not actually used...) */
   FUNC4(path_data->content_db_name,
         "_images_", sizeof(path_data->content_db_name));
   
   /* Redundant error check */
   if (FUNC3(path_data->content_path))
      return false;
   
   return true;
}