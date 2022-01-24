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

/* Variables and functions */
 int /*<<< orphan*/  core_info_curr_list ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

bool FUNC2(const char *path_info, const char *dir_cores,
      const char *exts, bool dir_show_hidden_files)
{
   if (!(core_info_curr_list = FUNC0(dir_cores,
               !FUNC1(path_info) ? path_info : dir_cores,
               exts,
               dir_show_hidden_files)))
      return false;
   return true;
}