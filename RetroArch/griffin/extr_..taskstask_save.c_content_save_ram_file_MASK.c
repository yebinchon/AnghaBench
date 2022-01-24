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
struct ram_type {int /*<<< orphan*/  path; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ retro_ctx_memory_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_FAILED_TO_SAVE_SRAM ; 
 int /*<<< orphan*/  MSG_SAVED_SUCCESSFULLY_TO ; 
 int /*<<< orphan*/  MSG_SAVING_RAM_TYPE ; 
 int /*<<< orphan*/  MSG_TO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct ram_type*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

bool FUNC7(unsigned slot)
{
   struct ram_type ram;
   retro_ctx_memory_info_t mem_info;

   if (!FUNC3(&mem_info, &ram, slot))
      return false;

   FUNC1("%s #%u %s \"%s\".\n",
         FUNC6(MSG_SAVING_RAM_TYPE),
         ram.type,
         FUNC6(MSG_TO),
         ram.path);

   if (!FUNC5(
            ram.path, mem_info.data, mem_info.size))
   {
      FUNC0("%s.\n",
            FUNC6(MSG_FAILED_TO_SAVE_SRAM));
      FUNC2("Attempting to recover ...\n");

      /* In case the file could not be written to,
       * the fallback function 'dump_to_file_desperate'
       * will be called. */
      if (!FUNC4(
               mem_info.data, mem_info.size, ram.type))
      {
         FUNC2("Failed ... Cannot recover save file.\n");
      }
      return false;
   }

   FUNC1("%s \"%s\".\n",
         FUNC6(MSG_SAVED_SUCCESSFULLY_TO),
         ram.path);

   return true;
}