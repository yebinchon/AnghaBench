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
struct TYPE_3__ {char* system; } ;
typedef  TYPE_1__ menu_thumbnail_path_data_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 

bool FUNC1(
      menu_thumbnail_path_data_t *path_data, const char **system)
{
   if (!path_data)
      return false;
   
   if (!system)
      return false;
   
   if (FUNC0(path_data->system))
      return false;
   
   *system = path_data->system;
   
   return true;
}