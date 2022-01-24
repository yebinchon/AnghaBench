#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  retro_task_t ;
struct TYPE_2__ {size_t undo_size; int autosave; void* undo_data; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ load_task_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,void*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,size_t,int) ; 

__attribute__((used)) static void FUNC4(retro_task_t *task,
      void *task_data,
      void *user_data, const char *error)
{
   load_task_data_t *load_data = (load_task_data_t*)task_data;
   char                  *path = FUNC2(load_data->path);
   void                  *data = load_data->undo_data;
   size_t                 size = load_data->undo_size;
   bool               autosave = load_data->autosave;

   FUNC0(task, task_data, user_data, error);

   FUNC3(path, data, size, autosave);

   FUNC1(path);
}