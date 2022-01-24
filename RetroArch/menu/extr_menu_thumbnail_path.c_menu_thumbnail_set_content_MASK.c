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
struct TYPE_4__ {char* right_path; char* left_path; char* content_path; char* content_label; char* content_core_name; char* content_db_name; char* content_img; void* playlist_left_mode; void* playlist_right_mode; } ;
typedef  TYPE_1__ menu_thumbnail_path_data_t ;

/* Variables and functions */
 void* PLAYLIST_THUMBNAIL_MODE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

bool FUNC3(menu_thumbnail_path_data_t *path_data, const char *label)
{
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
   
   if (FUNC1(label))
      return false;
   
   /* Cache content label */
   FUNC2(path_data->content_label, label, sizeof(path_data->content_label));
   
   /* Determine content image name */
   FUNC0(path_data);
   
   /* Have to set content path to *something*...
    * Just use label value (it doesn't matter) */
   FUNC2(path_data->content_path, label, sizeof(path_data->content_path));
   
   /* Redundant error check... */
   if (FUNC1(path_data->content_img))
      return false;
   
   return true;
}