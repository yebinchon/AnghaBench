#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_title ;
struct TYPE_8__ {void* userdata; int /*<<< orphan*/  func; } ;
typedef  TYPE_1__ task_finder_data_t ;
struct TYPE_9__ {int alternative_look; int /*<<< orphan*/  status; scalar_t__ list_index; scalar_t__ list_size; int /*<<< orphan*/ * playlist; void* playlist_name; void* playlist_path; scalar_t__ progress; void* title; struct TYPE_9__* state; int /*<<< orphan*/  handler; } ;
typedef  TYPE_2__ retro_task_t ;
typedef  int /*<<< orphan*/  playlist_name ;
typedef  TYPE_2__ pl_manager_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PLAYLIST_MANAGER_RESETTING_CORES ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  PL_MANAGER_BEGIN ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  task_pl_manager_reset_cores_finder ; 
 int /*<<< orphan*/  task_pl_manager_reset_cores_handler ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

bool FUNC11(const char *playlist_path)
{
   task_finder_data_t find_data;
   char playlist_name[PATH_MAX_LENGTH];
   char task_title[PATH_MAX_LENGTH];
   retro_task_t *task              = FUNC8();
   pl_manager_handle_t *pl_manager = (pl_manager_handle_t*)FUNC0(1, sizeof(pl_manager_handle_t));
   
   playlist_name[0] = '\0';
   task_title[0]    = '\0';
   
   /* Sanity check */
   if (!task || !pl_manager)
      goto error;
   
   if (FUNC5(playlist_path))
      goto error;
   
   FUNC1(playlist_name, playlist_path, sizeof(playlist_name));
   
   if (FUNC5(playlist_name))
      goto error;
   
   /* Concurrent management of the same playlist
    * is not allowed */
   find_data.func                = task_pl_manager_reset_cores_finder;
   find_data.userdata            = (void*)playlist_path;
   
   if (FUNC9(&find_data))
      goto error;
   
   /* Configure task */
   FUNC7(
         task_title, FUNC3(MSG_PLAYLIST_MANAGER_RESETTING_CORES),
         sizeof(task_title));
   FUNC6(task_title, playlist_name, sizeof(task_title));
   
   task->handler                 = task_pl_manager_reset_cores_handler;
   task->state                   = pl_manager;
   task->title                   = FUNC4(task_title);
   task->alternative_look        = true;
   task->progress                = 0;
   
   /* Configure handle */
   pl_manager->playlist_path     = FUNC4(playlist_path);
   pl_manager->playlist_name     = FUNC4(playlist_name);
   pl_manager->playlist          = NULL;
   pl_manager->list_size         = 0;
   pl_manager->list_index        = 0;
   pl_manager->status            = PL_MANAGER_BEGIN;
   
   FUNC10(task);
   
   return true;
   
error:
   
   if (task)
   {
      FUNC2(task);
      task = NULL;
   }
   
   if (pl_manager)
   {
      FUNC2(pl_manager);
      pl_manager = NULL;
   }
   
   return false;
}