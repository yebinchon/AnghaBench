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
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 size_t FUNC3 (void*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (size_t) ; 

int FUNC8(const char *filename, u32 addr)
{
   FILE *fp;
   u32 filesize;
   u8 *buffer;
   u32 i;
   size_t num_read = 0;

   if (!filename)
      return -1;

   if ((fp = FUNC2(filename, "rb")) == NULL)
      return -1;

   // Calculate file size
   FUNC5(fp, 0, SEEK_END);
   filesize = FUNC6(fp);
   FUNC5(fp, 0, SEEK_SET);

   if ((buffer = (u8 *)FUNC7(filesize)) == NULL)
   {
      FUNC1(fp);
      return -2;
   }

   num_read = FUNC3((void *)buffer, 1, filesize, fp);
   FUNC1(fp);

   for (i = 0; i < filesize; i++)
      FUNC0(addr+i, buffer[i]);

   FUNC4(buffer);

   return 0;
}