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
typedef  int /*<<< orphan*/  libretro_vfs_implementation_file ;
typedef  int /*<<< orphan*/  cdrom_path_bin ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char const,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC5(const char drive)
{
   RFILE *file;
   char cdrom_path_bin[256] = {0};

   FUNC0(cdrom_path_bin, sizeof(cdrom_path_bin), drive, 1, false);

   file = FUNC4(cdrom_path_bin, RETRO_VFS_FILE_ACCESS_READ, 0);

   if (file)
   {
      libretro_vfs_implementation_file *stream = FUNC3(file);
      bool has_media = false;

      has_media = FUNC1(stream);

      FUNC2(file);

      return has_media;
   }

   return false;
}