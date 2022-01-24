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
typedef  int /*<<< orphan*/  libretro_vfs_implementation_file ;
typedef  int /*<<< orphan*/  cdb ;

/* Variables and functions */
 int /*<<< orphan*/  DIRECTION_NONE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC5(libretro_vfs_implementation_file *stream)
{
   /* MMC Command: START STOP UNIT */
   unsigned char cdb[] = {0x1B, 0, 0, 0, 0x2, 0};
   int rv;

   FUNC2(stream);
   FUNC1(stream);

   rv = FUNC0(stream, DIRECTION_NONE, NULL, 0, cdb, sizeof(cdb), 0);

#ifdef CDROM_DEBUG
   printf("[CDROM] open tray status code %d\n", rv);
   fflush(stdout);
#endif

   if (rv)
      return 1;

   return 0;
}