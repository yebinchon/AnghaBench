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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  DIRECTION_IN ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

int FUNC4(libretro_vfs_implementation_file *stream, char *model, int len, bool *is_cdrom)
{
   /* MMC Command: INQUIRY */
   unsigned char cdb[] = {0x12, 0, 0, 0, 0xff, 0};
   unsigned char buf[256] = {0};
   int rv = FUNC0(stream, DIRECTION_IN, buf, sizeof(buf), cdb, sizeof(cdb), 0);
   bool cdrom = false;

   if (rv)
      return 1;

   if (model && len >= 32)
   {
      FUNC2(model, 0, len);

      /* vendor */
      FUNC1(model, buf + 8, 8);

      model[8] = ' ';

      /* product */
      FUNC1(model + 9, buf + 16, 16);

      model[25] = ' ';

      /* version */
      FUNC1(model + 26, buf + 32, 4);
   }

   cdrom = (buf[0] == 5);

   if (is_cdrom && cdrom)
      *is_cdrom = true;

#ifdef CDROM_DEBUG
   printf("[CDROM] Device Model: %s (is CD-ROM? %s)\n", model, (cdrom ? "yes" : "no"));
#endif
   return 0;
}