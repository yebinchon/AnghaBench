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
struct TYPE_3__ {char* content_core_name; } ;
typedef  TYPE_1__ menu_thumbnail_path_data_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 

bool FUNC1(
      menu_thumbnail_path_data_t *path_data, const char **core_name)
{
   if (!path_data)
      return false;
   
   if (!core_name)
      return false;
   
   if (FUNC0(path_data->content_core_name))
      return false;
   
   *core_name = path_data->content_core_name;
   
   return true;
}