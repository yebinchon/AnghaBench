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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (int*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (size_t,int,int*) ; 

__attribute__((used)) static int FUNC5( const char *filename )
{
   uint8_t buffer[128];
   size_t written = 0, offset = 0;
   int i, extensions = 0;
   FILE *fp = NULL;
   int siz = FUNC4(offset, sizeof (buffer), buffer);
   offset += sizeof( buffer);
   /* First block always exist */
   if (siz == sizeof(buffer) && (fp = FUNC2(filename, "wb")) != NULL) {
      written += FUNC3(buffer, 1, sizeof buffer, fp);
      extensions = buffer[0x7e]; /* This tells you how many more blocks to read */
      for(i = 0; i < extensions; i++, offset += sizeof( buffer)) {
         siz = FUNC4(offset, sizeof( buffer), buffer);
         if(siz == sizeof(buffer)) {
            written += FUNC3(buffer, 1, sizeof (buffer), fp);
         } else {
            break;
         }
      }
   }
   if (fp)
      FUNC1(fp);
   if(written) {
      FUNC0( "Written %d bytes to %s", written, filename);
   } else {
      FUNC0( "Nothing written!");
   }
   return written < sizeof(buffer);
}