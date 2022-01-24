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
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC2(const char *path)
{
   RFILE *dummy              = NULL;

   if (!path || !*path)
      return false;

   dummy = FUNC1(path,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!dummy)
      return false;

   FUNC0(dummy);
   return true;
}