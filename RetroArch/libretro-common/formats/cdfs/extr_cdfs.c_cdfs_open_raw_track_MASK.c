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
typedef  int /*<<< orphan*/  cdfs_track_t ;

/* Variables and functions */
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

cdfs_track_t* FUNC4(const char* path)
{
   const char* ext = FUNC2(path);

   if (FUNC3(ext, "bin") || FUNC3(ext, "iso"))
      return FUNC0(FUNC1(path, RETRO_VFS_FILE_ACCESS_READ, RETRO_VFS_FILE_ACCESS_HINT_NONE), 0);

   /* unsupported file type */
   return NULL;
}