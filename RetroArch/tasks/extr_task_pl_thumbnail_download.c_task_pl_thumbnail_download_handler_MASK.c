#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ state; } ;
typedef  TYPE_1__ retro_task_t ;
struct TYPE_12__ {int status; int list_size; int list_index; int type_idx; int /*<<< orphan*/ * http_task; int /*<<< orphan*/  thumbnail_path_data; int /*<<< orphan*/  playlist; int /*<<< orphan*/  system; int /*<<< orphan*/  playlist_path; } ;
typedef  TYPE_2__ pl_thumb_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  COLLECTION_SIZE ; 
#define  PL_THUMB_BEGIN 131 
#define  PL_THUMB_END 130 
#define  PL_THUMB_ITERATE_ENTRY 129 
#define  PL_THUMB_ITERATE_TYPE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(retro_task_t *task)
{
   pl_thumb_handle_t *pl_thumb = NULL;
   
   if (!task)
      goto task_finished;
   
   pl_thumb = (pl_thumb_handle_t*)task->state;
   
   if (!pl_thumb)
      goto task_finished;
   
   if (FUNC11(task))
      goto task_finished;
   
   switch (pl_thumb->status)
   {
      case PL_THUMB_BEGIN:
         {
            /* Load playlist */
            if (!FUNC6(pl_thumb->playlist_path))
               goto task_finished;
            
            pl_thumb->playlist = FUNC7(pl_thumb->playlist_path, COLLECTION_SIZE);
            
            if (!pl_thumb->playlist)
               goto task_finished;
            
            pl_thumb->list_size = FUNC8(pl_thumb->playlist);
            
            if (pl_thumb->list_size < 1)
               goto task_finished;
            
            /* Initialise thumbnail path data */
            pl_thumb->thumbnail_path_data = FUNC3();
            
            if (!pl_thumb->thumbnail_path_data)
               goto task_finished;
            
            if (!FUNC5(
                  pl_thumb->thumbnail_path_data, pl_thumb->system, pl_thumb->playlist))
               goto task_finished;
            
            /* All good - can start iterating */
            pl_thumb->status = PL_THUMB_ITERATE_ENTRY;
         }
         break;
      case PL_THUMB_ITERATE_ENTRY:
         {
            /* Set current thumbnail content */
            if (FUNC4(
                  pl_thumb->thumbnail_path_data, pl_thumb->playlist, pl_thumb->list_index))
            {
               const char *label = NULL;
               
               /* Update progress display */
               FUNC10(task);
               if (FUNC2(pl_thumb->thumbnail_path_data, &label))
                  FUNC15(task, FUNC9(label));
               else
                  FUNC15(task, FUNC9(""));
               FUNC14(task, (pl_thumb->list_index * 100) / pl_thumb->list_size);
               
               /* Start iterating over thumbnail type */
               pl_thumb->type_idx = 1;
               pl_thumb->status = PL_THUMB_ITERATE_TYPE;
            }
            else
            {
               /* Current playlist entry is broken - advance to
                * the next one */
               pl_thumb->list_index++;
               if (pl_thumb->list_index >= pl_thumb->list_size)
                  pl_thumb->status = PL_THUMB_END;
            }
         }
         break;
      case PL_THUMB_ITERATE_TYPE:
         {
            /* Ensure that we only enqueue one transfer
             * at a time... */
            if (pl_thumb->http_task)
            {
               if (FUNC12(pl_thumb->http_task))
                  pl_thumb->http_task = NULL;
               else
                  break;
            }
            
            /* Check whether all thumbnail types have been processed */
            if (pl_thumb->type_idx > 3)
            {
               /* Time to move on to the next entry */
               pl_thumb->list_index++;
               if (pl_thumb->list_index < pl_thumb->list_size)
                  pl_thumb->status = PL_THUMB_ITERATE_ENTRY;
               else
                  pl_thumb->status = PL_THUMB_END;
               break;
            }
            
            /* Download current thumbnail */
            if (pl_thumb)
               FUNC0(pl_thumb);
            
            /* Increment thumbnail type */
            pl_thumb->type_idx++;
         }
         break;
      case PL_THUMB_END:
      default:
         FUNC14(task, 100);
         goto task_finished;
   }
   
   return;
   
task_finished:
   
   if (task)
      FUNC13(task, true);
   
   FUNC1(pl_thumb, true);
}