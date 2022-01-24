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
typedef  int /*<<< orphan*/  tmp_buf ;
typedef  int /*<<< orphan*/  raw_url ;
struct TYPE_3__ {char* dir_thumbnails; int /*<<< orphan*/  thumbnail_path_data; int /*<<< orphan*/  type_idx; } ;
typedef  TYPE_1__ pl_thumb_handle_t ;
typedef  int /*<<< orphan*/  content_dir ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_PATH_CORE_THUMBNAILS_URL ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC12(
   pl_thumb_handle_t *pl_thumb,
   char *path, size_t path_size,
   char *url, size_t url_size)
{
   const char *system      = NULL;
   const char *db_name     = NULL;
   const char *img_name    = NULL;
   const char *sub_dir     = NULL;
   const char *system_name = NULL;
   char content_dir[PATH_MAX_LENGTH];
   char raw_url[2048];
   char tmp_buf[PATH_MAX_LENGTH];
   
   content_dir[0] = '\0';
   raw_url[0]     = '\0';
   tmp_buf[0]     = '\0';
   
   if (!pl_thumb->thumbnail_path_data)
      return false;
   
   if (FUNC8(pl_thumb->dir_thumbnails))
      return false;
   
   /* Extract required strings */
   FUNC6(pl_thumb->thumbnail_path_data, &system);
   FUNC3(pl_thumb->thumbnail_path_data, &db_name);
   if (!FUNC4(pl_thumb->thumbnail_path_data, &img_name))
      return false;
   if (!FUNC5(pl_thumb->type_idx, &sub_dir))
      return false;
   
   /* Dermine system name */
   if (FUNC8(db_name))
   {
      if (FUNC8(system))
         return false;
      
      /* If this is a content history or favorites playlist
       * then the current 'path_data->system' string is
       * meaningless. In this case, we fall back to the
       * content directory name */
      if (FUNC9(system, "history") ||
          FUNC9(system, "favorites"))
      {
         if (!FUNC2(
               pl_thumb->thumbnail_path_data, content_dir, sizeof(content_dir)))
            return false;
         
         system_name = content_dir;
      }
      else
         system_name = system;
   }
   else
      system_name = db_name;
   
   /* Generate local path */
   FUNC1(path, pl_thumb->dir_thumbnails,
         system_name, path_size);
   FUNC1(tmp_buf, path, sub_dir, sizeof(tmp_buf));
   FUNC1(path, tmp_buf, img_name, path_size);
   
   if (FUNC8(path))
      return false;
   
   /* Generate remote path */
   FUNC11(raw_url, FUNC0(FILE_PATH_CORE_THUMBNAILS_URL), sizeof(raw_url));
   FUNC10(raw_url, "/", sizeof(raw_url));
   FUNC10(raw_url, system_name, sizeof(raw_url));
   FUNC10(raw_url, "/", sizeof(raw_url));
   FUNC10(raw_url, sub_dir, sizeof(raw_url));
   FUNC10(raw_url, "/", sizeof(raw_url));
   FUNC10(raw_url, img_name, sizeof(raw_url));
   
   if (FUNC8(raw_url))
      return false;
   
   FUNC7(url, raw_url, url_size);
   
   if (FUNC8(url))
      return false;
   
   return true;
}