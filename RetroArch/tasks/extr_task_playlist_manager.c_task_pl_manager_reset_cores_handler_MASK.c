#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_title ;
struct playlist_entry {char* label; char* path; char* core_path; char* core_name; int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {scalar_t__ state; } ;
typedef  TYPE_1__ retro_task_t ;
typedef  int /*<<< orphan*/  playlist_t ;
struct TYPE_11__ {int status; int list_size; int list_index; char* playlist_name; int /*<<< orphan*/  playlist_path; int /*<<< orphan*/  playlist; } ;
typedef  TYPE_2__ pl_manager_handle_t ;
typedef  int /*<<< orphan*/  entry_name ;

/* Variables and functions */
 int /*<<< orphan*/  COLLECTION_SIZE ; 
 int /*<<< orphan*/  MSG_PLAYLIST_MANAGER_CORES_RESET ; 
 int /*<<< orphan*/  MSG_PLAYLIST_MANAGER_RESETTING_CORES ; 
 int PATH_MAX_LENGTH ; 
#define  PL_MANAGER_BEGIN 130 
#define  PL_MANAGER_END 129 
#define  PL_MANAGER_ITERATE_ENTRY 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct playlist_entry const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,struct playlist_entry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 scalar_t__ FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC23(retro_task_t *task)
{
   pl_manager_handle_t *pl_manager = NULL;
   
   if (!task)
      goto task_finished;
   
   pl_manager = (pl_manager_handle_t*)task->state;
   
   if (!pl_manager)
      goto task_finished;
   
   if (FUNC19(task))
      goto task_finished;
   
   switch (pl_manager->status)
   {
      case PL_MANAGER_BEGIN:
         {
            /* Load playlist */
            if (!FUNC3(pl_manager->playlist_path))
               goto task_finished;
            
            pl_manager->playlist = FUNC8(pl_manager->playlist_path, COLLECTION_SIZE);
            
            if (!pl_manager->playlist)
               goto task_finished;
            
            pl_manager->list_size = FUNC10(pl_manager->playlist);
            
            if (pl_manager->list_size < 1)
               goto task_finished;
            
            /* All good - can start iterating */
            pl_manager->status = PL_MANAGER_ITERATE_ENTRY;
         }
         break;
      case PL_MANAGER_ITERATE_ENTRY:
         {
            const struct playlist_entry *entry = NULL;
            
            /* Get current entry */
            FUNC7(
                  pl_manager->playlist, pl_manager->list_index, &entry);
            
            if (entry)
            {
               struct playlist_entry update_entry = {0};
               char task_title[PATH_MAX_LENGTH];
               char detect_string[PATH_MAX_LENGTH];
               
               task_title[0]    = '\0';
               detect_string[0] = '\0';
               
               /* Update progress display */
               FUNC18(task);
               
               FUNC17(
                     task_title, FUNC2(MSG_PLAYLIST_MANAGER_RESETTING_CORES),
                     sizeof(task_title));
               
               if (!FUNC14(entry->label))
                  FUNC16(task_title, entry->label, sizeof(task_title));
               else if (!FUNC14(entry->path))
               {
                  char entry_name[PATH_MAX_LENGTH];
                  entry_name[0] = '\0';
                  
                  FUNC0(entry_name, entry->path, sizeof(entry_name));
                  FUNC16(task_title, entry_name, sizeof(task_title));
               }
               
               FUNC22(task, FUNC13(task_title));
               FUNC21(task, (pl_manager->list_index * 100) / pl_manager->list_size);
               
               /* Reset core association */
               detect_string[0] = 'D';
               detect_string[1] = 'E';
               detect_string[2] = 'T';
               detect_string[3] = 'E';
               detect_string[4] = 'C';
               detect_string[5] = 'T';
               detect_string[6] = '\0';
               
               update_entry.core_path = detect_string;
               update_entry.core_name = detect_string;
               
               FUNC11(
                     pl_manager->playlist, pl_manager->list_index, &update_entry);
            }
            
            /* Increment entry index */
            pl_manager->list_index++;
            if (pl_manager->list_index >= pl_manager->list_size)
               pl_manager->status = PL_MANAGER_END;
         }
         break;
      case PL_MANAGER_END:
         {
            playlist_t *cached_playlist = FUNC5();
            char task_title[PATH_MAX_LENGTH];
            
            task_title[0] = '\0';
            
            /* Save playlist changes to disk */
            FUNC12(pl_manager->playlist);
            
            /* If this is the currently cached playlist, then
             * it must be re-cached (otherwise changes will be
             * lost if the currently cached playlist is saved
             * to disk for any reason...) */
            if (cached_playlist)
            {
               if (FUNC15(pl_manager->playlist_path, FUNC6(cached_playlist)))
               {
                  FUNC4();
                  FUNC9(pl_manager->playlist_path, COLLECTION_SIZE);
               }
            }
            
            /* Update progress display */
            FUNC18(task);
            
            FUNC17(
                  task_title, FUNC2(MSG_PLAYLIST_MANAGER_CORES_RESET),
                  sizeof(task_title));
            FUNC16(task_title, pl_manager->playlist_name, sizeof(task_title));
            
            FUNC22(task, FUNC13(task_title));
         }
         /* fall-through */
      default:
         FUNC21(task, 100);
         goto task_finished;
   }
   
   return;
   
task_finished:
   
   if (task)
      FUNC20(task, true);
   
   FUNC1(pl_manager);
}