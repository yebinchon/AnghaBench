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
 scalar_t__ FUNC0 (void*,void*,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC1 (void*,void*,void*,char*,scalar_t__,int) ; 
 scalar_t__ FS_MAX_MOUNTPATH_SIZE ; 
 scalar_t__ FS_MOUNT_SOURCE_SIZE ; 
 int /*<<< orphan*/  FS_SOURCETYPE_EXTERNAL ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 

int FUNC7(void *pClient, void *pCmd, char **mount_path)
{
   char *mountPath = NULL;
   int result      = -1;
   void *mountSrc  = FUNC3(FS_MOUNT_SOURCE_SIZE);

   if (!mountSrc)
      return -3;

   mountPath       = (char*) FUNC3(FS_MAX_MOUNTPATH_SIZE);

   if (!mountPath)
   {
      FUNC2(mountSrc);
      return -4;
   }

   FUNC4(mountSrc, 0, FS_MOUNT_SOURCE_SIZE);
   FUNC4(mountPath, 0, FS_MAX_MOUNTPATH_SIZE);

   /* Mount sdcard */
   if (FUNC0(pClient, pCmd, FS_SOURCETYPE_EXTERNAL, mountSrc, -1) == 0)
   {
      result = FUNC1(pClient, pCmd, mountSrc, mountPath, FS_MAX_MOUNTPATH_SIZE, -1);

      if ((result == 0) && mount_path)
      {
         *mount_path = (char*)FUNC3(FUNC6(mountPath) + 1);
         if (*mount_path)
            FUNC5(*mount_path, mountPath);
      }
   }

   FUNC2(mountPath);
   FUNC2(mountSrc);
   return result;
}