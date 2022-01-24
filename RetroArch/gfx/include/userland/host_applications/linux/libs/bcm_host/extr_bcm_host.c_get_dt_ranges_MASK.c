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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC4(const char *filename, unsigned offset)
{
   unsigned address = ~0;
   FILE *fp = FUNC1(filename, "rb");
   if (fp)
   {
      unsigned char buf[4];
      FUNC3(fp, offset, SEEK_SET);
      if (FUNC2(buf, 1, sizeof buf, fp) == sizeof buf)
         address = buf[0] << 24 | buf[1] << 16 | buf[2] << 8 | buf[3] << 0;
      FUNC0(fp);
   }
   return address;
}