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
struct retro_system_info {scalar_t__ valid_extensions; scalar_t__ library_version; scalar_t__ library_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct retro_system_info*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct retro_system_info *info)
{
   if (!info)
      return;

   FUNC0((void*)info->library_name);
   FUNC0((void*)info->library_version);
   FUNC0((void*)info->valid_extensions);
   FUNC1(info, 0, sizeof(*info));
}