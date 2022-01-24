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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  intfstream_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (size_t) ; 

__attribute__((used)) static bool FUNC9(const char *name,
      uint64_t offset, uint64_t size, char *serial)
{
   int rv;
   uint8_t *data     = NULL;
   int64_t file_size = -1;
   intfstream_t *fd  = FUNC3(name,
         RETRO_VFS_FILE_ACCESS_READ, RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!fd)
      return 0;

   if (FUNC6(fd, 0, SEEK_END) == -1)
      goto error;

   file_size = FUNC7(fd);

   if (FUNC6(fd, 0, SEEK_SET) == -1)
      goto error;

   if (file_size < 0)
      goto error;

   if (offset != 0 || size < (uint64_t) file_size)
   {
      if (FUNC6(fd, (int64_t)offset, SEEK_SET) == -1)
         goto error;

      data = (uint8_t*)FUNC8((size_t)size);

      if (FUNC5(fd, data, size) != (int64_t) size)
      {
         FUNC0(data);
         goto error;
      }

      FUNC1(fd);
      FUNC0(fd);
      fd = FUNC4(data, RETRO_VFS_FILE_ACCESS_READ,
            RETRO_VFS_FILE_ACCESS_HINT_NONE,
            size);
      if (!fd)
      {
         FUNC0(data);
         return 0;
      }
   }

   rv = FUNC2(fd, serial);
   FUNC1(fd);
   FUNC0(fd);
   FUNC0(data);
   return rv;

error:
   FUNC1(fd);
   FUNC0(fd);
   return 0;
}