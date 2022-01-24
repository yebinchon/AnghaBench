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
struct fs_dir {int /*<<< orphan*/ * dhandle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fs_dir*) ; 

int FUNC3(void *dhandle)
{
   struct fs_dir *fsdir = (struct fs_dir *)dhandle;
   int ret = -1;

   FUNC0( "vc_hostfs_closedir(%p)", dhandle );

   if (dhandle && fsdir->dhandle)
   {
      (void)FUNC1(fsdir->dhandle);
      fsdir->dhandle = NULL;
      FUNC2(fsdir);
      ret = 0;
   }

   return ret;
}