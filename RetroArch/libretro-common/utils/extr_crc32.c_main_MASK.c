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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (void*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(int argc, const char* argv[])
{
   if (argc != 2 )
   {
      FUNC3( stderr, "Usage: crc32 <filename>\n" );
      return 1;
   }

   FILE *file = FUNC2(argv[1], "rb");

   if (file)
   {
      uint32_t crc = FUNC0(0L, NULL, 0 );

      for (;;)
      {
         uint8_t buffer[16384];

         int numread = FUNC4((void*)buffer, 1, sizeof(buffer), file);

         if (numread > 0)
            crc = FUNC0( crc, buffer, numread );
         else
            break;
      }

      FUNC1(file);

      FUNC5("%08x\n", crc);
      return 0;
   }

   FUNC3(stderr, "Error opening input file: %s\n", FUNC6(errno));
   return 1;
}