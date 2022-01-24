#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ network_on_demand_thumbnails; } ;
struct TYPE_10__ {int /*<<< orphan*/  menu_thumbnail_upscale_threshold; } ;
struct TYPE_12__ {TYPE_2__ bools; TYPE_1__ uints; } ;
typedef  TYPE_3__ settings_t ;
typedef  int /*<<< orphan*/  playlist_t ;
struct TYPE_13__ {int /*<<< orphan*/  list_id; TYPE_5__* thumbnail; } ;
typedef  TYPE_4__ menu_thumbnail_tag_t ;
struct TYPE_14__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_5__ menu_thumbnail_t ;
typedef  int /*<<< orphan*/  menu_thumbnail_path_data_t ;
typedef  int /*<<< orphan*/  last_img_name ;
typedef  enum menu_thumbnail_id { ____Placeholder_menu_thumbnail_id } menu_thumbnail_id ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_THUMBNAIL_STATUS_MISSING ; 
 int /*<<< orphan*/  MENU_THUMBNAIL_STATUS_PENDING ; 
 int PATH_MAX_LENGTH ; 
 scalar_t__ FUNC0 (int,int) ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  menu_thumbnail_handle_upload ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  menu_thumbnail_list_id ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 scalar_t__ FUNC11 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int /*<<< orphan*/ *,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 

void FUNC14(
      menu_thumbnail_path_data_t *path_data, enum menu_thumbnail_id thumbnail_id,
      playlist_t *playlist, size_t idx, menu_thumbnail_t *thumbnail)
{
   settings_t *settings                = FUNC1();
   const char *thumbnail_path          = NULL;
   bool has_thumbnail                  = false;

   if (!path_data || !thumbnail || !settings)
      return;

   /* Reset thumbnail, then set 'missing' status by default
    * (saves a number of checks later) */
   FUNC6(thumbnail);
   thumbnail->status = MENU_THUMBNAIL_STATUS_MISSING;

   /* Update/extract thumbnail path */
   if (FUNC5(path_data, thumbnail_id))
      if (FUNC7(path_data, thumbnail_id))
         has_thumbnail = FUNC3(path_data, thumbnail_id, &thumbnail_path);

   /* Load thumbnail, if required */
   if (has_thumbnail)
   {
      if (FUNC8(thumbnail_path))
      {
         menu_thumbnail_tag_t *thumbnail_tag =
               (menu_thumbnail_tag_t*)FUNC0(1, sizeof(menu_thumbnail_tag_t));

         if (!thumbnail_tag)
            return;

         /* Configure user data */
         thumbnail_tag->thumbnail = thumbnail;
         thumbnail_tag->list_id   = menu_thumbnail_list_id;

         /* Would like to cancel any existing image load tasks
          * here, but can't see how to do it... */
         if(FUNC11(
               thumbnail_path, FUNC13(),
               settings->uints.menu_thumbnail_upscale_threshold,
               menu_thumbnail_handle_upload, thumbnail_tag))
            thumbnail->status = MENU_THUMBNAIL_STATUS_PENDING;
      }
#ifdef HAVE_NETWORKING
      /* Handle on demand thumbnail downloads */
      else if (settings->bools.network_on_demand_thumbnails)
      {
         const char *system                         = NULL;
         const char *img_name                       = NULL;
         static char last_img_name[PATH_MAX_LENGTH] = {0};

         if (!playlist)
            return;

         /* Get current image name */
         if (!menu_thumbnail_get_img_name(path_data, &img_name))
            return;

         /* Only trigger a thumbnail download if image
          * name has changed since the last call of
          * menu_thumbnail_request()
          * > Allows menu_thumbnail_request() to be used
          *   for successive right/left thumbnail requests
          *   with minimal duplication of effort
          *   (i.e. task_push_pl_entry_thumbnail_download()
          *   will automatically cancel if a download for the
          *   existing playlist entry is pending, but the
          *   checks required for this involve significant
          *   overheads. We can avoid this entirely with
          *   a simple string comparison) */
         if (string_is_equal(img_name, last_img_name))
            return;

         strlcpy(last_img_name, img_name, sizeof(last_img_name));

         /* Get system name */
         if (!menu_thumbnail_get_system(path_data, &system))
            return;

         /* Trigger thumbnail download */
         task_push_pl_entry_thumbnail_download(
               system, playlist, (unsigned)idx,
               false, true);
      }
#endif
   }
}