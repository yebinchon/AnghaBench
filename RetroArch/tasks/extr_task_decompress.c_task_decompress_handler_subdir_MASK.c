#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ state; } ;
typedef  TYPE_1__ retro_task_t ;
struct TYPE_11__ {int /*<<< orphan*/  archive; int /*<<< orphan*/  callback_error; TYPE_9__* userdata; int /*<<< orphan*/  valid_ext; int /*<<< orphan*/  source_file; } ;
typedef  TYPE_2__ decompress_state_t ;
struct TYPE_12__ {int /*<<< orphan*/  archive_path; TYPE_2__* dec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  file_decompressed_subdir ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(retro_task_t *task)
{
   int ret;
   bool retdec;
   decompress_state_t *dec = (decompress_state_t*)task->state;

   dec->userdata->dec            = dec;
   FUNC3(dec->userdata->archive_path,
         dec->source_file,
         sizeof(dec->userdata->archive_path));

   ret                     = FUNC0(
         &dec->archive,
         &retdec, dec->source_file,
         dec->valid_ext, file_decompressed_subdir, dec->userdata);

   FUNC7(task,
         FUNC2(&dec->archive));

   if (FUNC5(task) || ret != 0)
   {
      FUNC6(task, dec->callback_error);
      FUNC1(&dec->archive);

      FUNC4(task, dec);
   }
}