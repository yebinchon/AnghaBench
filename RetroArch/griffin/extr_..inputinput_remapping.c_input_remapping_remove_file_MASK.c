#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  directory_input_remapping; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 TYPE_2__* FUNC0 () ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 

bool FUNC6(const char *path)
{
   bool ret                = false;
   size_t path_size        = PATH_MAX_LENGTH * sizeof(char);
   char *buf               = (char*)FUNC5(PATH_MAX_LENGTH * sizeof(char));
   char *remap_file        = (char*)FUNC5(PATH_MAX_LENGTH * sizeof(char));
   settings_t    *settings = FUNC0();

   buf[0] = remap_file[0]            = '\0';

   FUNC2(buf, settings->paths.directory_input_remapping,
         path, path_size);

   FUNC3(remap_file, buf, ".rmp", path_size);

   ret = FUNC1(remap_file) == 0 ? true : false;
   FUNC4(buf);
   FUNC4(remap_file);
   return ret;
}