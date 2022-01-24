#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {void* userdata; int /*<<< orphan*/  func; } ;
typedef  TYPE_2__ task_finder_data_t ;
struct TYPE_11__ {char const* directory_thumbnails; } ;
struct TYPE_13__ {TYPE_1__ paths; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_14__ {int alternative_look; int type_idx; int overwrite; int /*<<< orphan*/  status; scalar_t__ list_index; scalar_t__ list_size; int /*<<< orphan*/ * http_task; int /*<<< orphan*/ * thumbnail_path_data; int /*<<< orphan*/ * playlist; void* dir_thumbnails; void* playlist_path; void* system; scalar_t__ progress; void* title; struct TYPE_14__* state; int /*<<< orphan*/  handler; } ;
typedef  TYPE_4__ retro_task_t ;
typedef  TYPE_4__ pl_thumb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_PATH_CONTENT_FAVORITES ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_HISTORY ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_IMAGE_HISTORY ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_MUSIC_HISTORY ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_VIDEO_HISTORY ; 
 int /*<<< orphan*/  PL_THUMB_BEGIN ; 
 scalar_t__ FUNC0 (int,int) ; 
 TYPE_3__* FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 char* FUNC4 (char const*) ; 
 void* FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 TYPE_4__* FUNC8 () ; 
 int /*<<< orphan*/  task_pl_thumbnail_download_handler ; 
 int /*<<< orphan*/  task_pl_thumbnail_finder ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 

bool FUNC11(
      const char *system, const char *playlist_path)
{
   task_finder_data_t find_data;
   settings_t *settings          = FUNC1();
   retro_task_t *task            = FUNC8();
   pl_thumb_handle_t *pl_thumb   = (pl_thumb_handle_t*)FUNC0(1, sizeof(pl_thumb_handle_t));
   const char *playlist_file     = FUNC4(playlist_path);
   
   /* Sanity check */
   if (!settings || !task || !pl_thumb)
      goto error;
   
   if (FUNC6(system) ||
       FUNC6(playlist_path) ||
       FUNC6(playlist_file) ||
       FUNC6(settings->paths.directory_thumbnails))
      goto error;
   
   /* Only parse supported playlist types */
   if (FUNC7(playlist_file, FUNC2(FILE_PATH_CONTENT_HISTORY)) ||
       FUNC7(playlist_file, FUNC2(FILE_PATH_CONTENT_FAVORITES)) ||
       FUNC7(playlist_file, FUNC2(FILE_PATH_CONTENT_MUSIC_HISTORY)) ||
       FUNC7(playlist_file, FUNC2(FILE_PATH_CONTENT_VIDEO_HISTORY)) ||
       FUNC7(playlist_file, FUNC2(FILE_PATH_CONTENT_IMAGE_HISTORY)) ||
       FUNC7(system, "history") ||
       FUNC7(system, "favorites") ||
       FUNC7(system, "images_history"))
      goto error;
   
   /* Concurrent download of thumbnails for the same
    * playlist is not allowed */
   find_data.func                = task_pl_thumbnail_finder;
   find_data.userdata            = (void*)playlist_path;
   
   if (FUNC9(&find_data))
      goto error;
   
   /* Configure task */
   task->handler                 = task_pl_thumbnail_download_handler;
   task->state                   = pl_thumb;
   task->title                   = FUNC5(system);
   task->alternative_look        = true;
   task->progress                = 0;
   
   /* Configure handle */
   pl_thumb->system              = FUNC5(system);
   pl_thumb->playlist_path       = FUNC5(playlist_path);
   pl_thumb->dir_thumbnails      = FUNC5(settings->paths.directory_thumbnails);
   pl_thumb->playlist            = NULL;
   pl_thumb->thumbnail_path_data = NULL;
   pl_thumb->http_task           = NULL;
   pl_thumb->list_size           = 0;
   pl_thumb->list_index          = 0;
   pl_thumb->type_idx            = 1;
   pl_thumb->overwrite           = false;
   pl_thumb->status              = PL_THUMB_BEGIN;
   
   FUNC10(task);
   
   return true;
   
error:
   
   if (task)
   {
      FUNC3(task);
      task = NULL;
   }
   
   if (pl_thumb)
   {
      FUNC3(pl_thumb);
      pl_thumb = NULL;
   }
   
   return false;
}