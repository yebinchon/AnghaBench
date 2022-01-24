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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int /*<<< orphan*/  CRC32_BUFFER_SIZE ; 
 unsigned int CRC32_MAX_MB ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

uint32_t FUNC7(uint32_t crc, const char *path)
{
   unsigned i;
   RFILE *file        = NULL;
   unsigned char *buf = NULL;
   if (!path)
      return 0;

   file = FUNC3(path, RETRO_VFS_FILE_ACCESS_READ, 0);
   if (!file)
      goto error;

   buf = (unsigned char*)FUNC6(CRC32_BUFFER_SIZE);
   if (!buf)
      goto error;

   for(i = 0; i < CRC32_MAX_MB; i++)
   {
      int64_t nread = FUNC4(file, buf, CRC32_BUFFER_SIZE);
      if (nread < 0)		
         goto error;

      crc = FUNC0(crc, buf, (size_t)nread);
      if (FUNC2(file))
         break;
   }
   FUNC5(buf);
   FUNC1(file);
   return crc;

error:
   if (buf)
      FUNC5(buf);
   if (file)
      FUNC1(file);
   return 0;
}