#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
union string_list_elem_attr {int /*<<< orphan*/  i; } ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  RETRO_MEMORY_RTC ; 
 int /*<<< orphan*/  RETRO_MEMORY_SAVE_RAM ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,union string_list_elem_attr) ; 
 int /*<<< orphan*/  task_save_files ; 

void FUNC4(const char *savefile_path)
{
   union string_list_elem_attr attr;
   char *savefile_name_rtc = (char*)
      FUNC2(PATH_MAX_LENGTH * sizeof(char));

   savefile_name_rtc[0] = '\0';

   attr.i = RETRO_MEMORY_SAVE_RAM;
   FUNC3(task_save_files, savefile_path, attr);

   /* Infer .rtc save path from save ram path. */
   attr.i = RETRO_MEMORY_RTC;
   FUNC0(savefile_name_rtc,
         savefile_path, ".rtc",
         PATH_MAX_LENGTH * sizeof(char));
   FUNC3(task_save_files, savefile_name_rtc, attr);
   FUNC1(savefile_name_rtc);
}