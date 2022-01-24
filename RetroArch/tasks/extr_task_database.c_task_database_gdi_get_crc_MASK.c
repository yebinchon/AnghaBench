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
typedef  char* uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_COULD_NOT_FIND_VALID_DATA_TRACK ; 
 int /*<<< orphan*/  MSG_READING_FIRST_DATA_TRACK ; 
 int /*<<< orphan*/  PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char const* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(const char *name, uint32_t *crc)
{
   char *track_path = (char *)FUNC4(PATH_MAX_LENGTH);
   int rv           = 0;

   track_path[0] = '\0';

   rv = FUNC2(name, true, track_path, PATH_MAX_LENGTH);

   if (rv < 0)
   {
      FUNC0("%s: %s\n", FUNC5(MSG_COULD_NOT_FIND_VALID_DATA_TRACK),
                FUNC6(-rv));
      FUNC1(track_path);
      return 0;
   }

   FUNC0("GDI '%s' primary track: %s\n", name, track_path);

   FUNC0("%s\n", FUNC5(MSG_READING_FIRST_DATA_TRACK));

   rv = FUNC3(track_path, 0, SIZE_MAX, crc);
   if (rv == 1)
   {
      FUNC0("GDI '%s' crc: %x\n", name, *crc);
   }
   FUNC1(track_path);
   return rv;
}