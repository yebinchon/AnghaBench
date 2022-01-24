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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 

__attribute__((used)) static bool FUNC7(const char *src_path, const char *dst_path, char *msg, size_t size)
{
   RFILE *dst = NULL;
   bool ret   = true;
   RFILE *src = FUNC3(src_path,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!src)
   {
      FUNC6(msg, "unable to open source file", size);
      ret = false;
   }

   dst = FUNC3(dst_path,
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!dst)
   {
      FUNC6(msg, "unable to open destination file", size);
      ret = false;
   }

   while (!FUNC1(src))
   {
      int64_t numw;
      char buffer[100] = {0};
      int64_t numr = FUNC4(src, buffer, sizeof(buffer));

      if (FUNC2(dst) != 0)
      {
         FUNC6(msg, "error reading file\n", size);
         ret = false;
         break;
      }

      numw = FUNC5(dst, buffer, numr);

      if (numw != numr)
      {
         FUNC6(msg, "error writing to file\n", size);
         ret = false;
         break;
      }
   }

   FUNC0(src);
   FUNC0(dst);

   return ret;
}