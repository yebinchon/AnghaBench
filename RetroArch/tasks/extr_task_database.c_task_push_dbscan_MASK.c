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
struct TYPE_9__ {int /*<<< orphan*/  scan_without_core_match; } ;
struct TYPE_10__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_11__ {int alternative_look; int show_hidden_files; int is_directory; void* content_database_path; int /*<<< orphan*/ * playlist_directory; void* fullpath; int /*<<< orphan*/  scan_without_core_match; int /*<<< orphan*/  progress_cb; void* title; int /*<<< orphan*/  callback; struct TYPE_11__* state; int /*<<< orphan*/  handler; } ;
typedef  TYPE_3__ retro_task_t ;
typedef  int /*<<< orphan*/  retro_task_callback_t ;
typedef  TYPE_3__ db_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PREPARING_FOR_CONTENT_SCAN ; 
 scalar_t__ FUNC0 (int,int) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 char const* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (char const*) ; 
 int /*<<< orphan*/  task_database_handler ; 
 int /*<<< orphan*/  task_database_progress_cb ; 
 TYPE_3__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

bool FUNC7(
      const char *playlist_directory,
      const char *content_database,
      const char *fullpath,
      bool directory,
      bool db_dir_show_hidden_files,
      retro_task_callback_t cb)
{
   retro_task_t *t      = FUNC5();
#ifdef RARCH_INTERNAL
   settings_t *settings = config_get_ptr();
#endif
   db_handle_t *db      = (db_handle_t*)FUNC0(1, sizeof(db_handle_t));

   if (!t || !db)
      goto error;

   t->handler                = task_database_handler;
   t->state                  = db;
   t->callback               = cb;
   t->title                  = FUNC4(FUNC3(MSG_PREPARING_FOR_CONTENT_SCAN));
   t->alternative_look       = true;

#ifdef RARCH_INTERNAL
   t->progress_cb            = task_database_progress_cb;
   db->scan_without_core_match = settings->bools.scan_without_core_match;
#endif
   db->show_hidden_files     = db_dir_show_hidden_files;
   db->is_directory          = directory;
   db->playlist_directory    = NULL;
   db->fullpath              = FUNC4(fullpath);
   db->playlist_directory    = FUNC4(playlist_directory);
   db->content_database_path = FUNC4(content_database);

   FUNC6(t);

   return true;

error:
   if (t)
      FUNC2(t);
   if (db)
      FUNC2(db);
   return false;
}