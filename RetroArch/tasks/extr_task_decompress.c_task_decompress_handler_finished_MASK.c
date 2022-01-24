#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  retro_task_t ;
struct TYPE_6__ {TYPE_2__* source_file; } ;
typedef  TYPE_1__ decompress_task_data_t ;
struct TYPE_7__ {struct TYPE_7__* target_dir; struct TYPE_7__* userdata; struct TYPE_7__* valid_ext; struct TYPE_7__* subdir; struct TYPE_7__* source_file; } ;
typedef  TYPE_2__ decompress_state_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(retro_task_t *task,
      decompress_state_t *dec)
{
   FUNC7(task, true);

   if (!FUNC4(task) && FUNC3(task))
      FUNC6(task, FUNC2("Task canceled"));

   if (FUNC4(task))
      FUNC1(dec->source_file);
   else
   {
      decompress_task_data_t *data =
         (decompress_task_data_t*)FUNC0(1, sizeof(*data));

      data->source_file = dec->source_file;
      FUNC5(task, data);
   }

   if (dec->subdir)
      FUNC1(dec->subdir);
   if (dec->valid_ext)
      FUNC1(dec->valid_ext);
   if (dec->userdata)
      FUNC1(dec->userdata);
   FUNC1(dec->target_dir);
   FUNC1(dec);
}