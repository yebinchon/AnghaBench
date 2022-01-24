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
 unsigned int RETRO_VFS_FILE_ACCESS_READ ; 
 unsigned int RETRO_VFS_FILE_ACCESS_READ_WRITE ; 
 unsigned int RETRO_VFS_FILE_ACCESS_UPDATE_EXISTING ; 
 unsigned int RETRO_VFS_FILE_ACCESS_WRITE ; 
 int /*<<< orphan*/  RETRO_VFS_SEEK_POSITION_END ; 
 int /*<<< orphan*/ * FUNC0 (char const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

RFILE* FUNC3(const char *path, const char *mode)
{
   RFILE          *output  = NULL;
   unsigned int retro_mode = RETRO_VFS_FILE_ACCESS_READ;
   bool position_to_end    = false;

   if (FUNC2(mode, "r"))
   {
      retro_mode = RETRO_VFS_FILE_ACCESS_READ;
      if (FUNC2(mode, "+"))
      {
         retro_mode = RETRO_VFS_FILE_ACCESS_READ_WRITE |
            RETRO_VFS_FILE_ACCESS_UPDATE_EXISTING;
      }
   }
   else if (FUNC2(mode, "w"))
   {
      retro_mode = RETRO_VFS_FILE_ACCESS_WRITE;
      if (FUNC2(mode, "+"))
         retro_mode = RETRO_VFS_FILE_ACCESS_READ_WRITE;
   }
   else if (FUNC2(mode, "a"))
   {
      retro_mode = RETRO_VFS_FILE_ACCESS_WRITE |
         RETRO_VFS_FILE_ACCESS_UPDATE_EXISTING;
      position_to_end = true;
      if (FUNC2(mode, "+"))
      {
         retro_mode = RETRO_VFS_FILE_ACCESS_READ_WRITE |
            RETRO_VFS_FILE_ACCESS_UPDATE_EXISTING;
      }
   }

   output = FUNC0(path, retro_mode,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);
   if (output && position_to_end)
      FUNC1(output, 0, RETRO_VFS_SEEK_POSITION_END);

   return output;
}