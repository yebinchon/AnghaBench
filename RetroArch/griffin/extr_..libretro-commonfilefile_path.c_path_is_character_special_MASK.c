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
 int RETRO_VFS_STAT_IS_CHARACTER_SPECIAL ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 

bool FUNC1(const char *path)
{
   return (FUNC0(path, NULL) & RETRO_VFS_STAT_IS_CHARACTER_SPECIAL) != 0;
}