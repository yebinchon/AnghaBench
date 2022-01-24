#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* Message_Digest; } ;
typedef  TYPE_1__ SHA1Context ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int,int,int,int) ; 

int FUNC7(const char *path, char *result)
{
   SHA1Context sha;
   unsigned char buff[4096];
   int rv    = 1;
   RFILE *fd = FUNC4(path,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!fd)
      goto error;

   buff[0] = '\0';

   FUNC1(&sha);

   do
   {
      rv = (int)FUNC5(fd, buff, 4096);
      if (rv < 0)
         goto error;

      FUNC0(&sha, buff, rv);
   }while(rv);

   if (!FUNC2(&sha))
      goto error;

   FUNC6(result, "%08X%08X%08X%08X%08X",
         sha.Message_Digest[0],
         sha.Message_Digest[1],
         sha.Message_Digest[2],
         sha.Message_Digest[3], sha.Message_Digest[4]);

   FUNC3(fd);
   return 0;

error:
   if (fd)
      FUNC3(fd);
   return -1;
}