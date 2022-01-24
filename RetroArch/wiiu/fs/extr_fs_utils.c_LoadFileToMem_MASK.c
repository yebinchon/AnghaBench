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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC6(const char *filepath, u8 **inbuffer, u32 *size)
{
   u8 *buffer;
   u32 filesize;
   int iFd;
   u32 blocksize = 0x4000;
   u32 done      = 0;
   int readBytes = 0;

   /* always initialze input */
   *inbuffer     = NULL;

   if (size)
      *size = 0;

   iFd = FUNC4(filepath, O_RDONLY);
   if (iFd < 0)
      return -1;

   filesize = FUNC2(iFd, 0, SEEK_END);
   FUNC2(iFd, 0, SEEK_SET);

   buffer = (u8 *) FUNC3(filesize);
   if (buffer == NULL)
   {
      FUNC0(iFd);
      return -2;
   }

   while(done < filesize)
   {
      if (done + blocksize > filesize)
         blocksize = filesize - done;
      readBytes = FUNC5(iFd, buffer + done, blocksize);
      if (readBytes <= 0)
         break;
      done += readBytes;
   }

   FUNC0(iFd);

   if (done != filesize)
   {
      FUNC1(buffer);
      return -3;
   }

   *inbuffer = buffer;

   /* sign is optional input */
   if (size)
      *size = filesize;

   return filesize;
}