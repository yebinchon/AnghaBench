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
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(libretro_vfs_implementation_file *stream)
{
   unsigned char cdb[] = {0x46, 0x2, 0, 0x1, 0, 0, 0, 0, 0x14, 0};
   unsigned char buf[20] = {0};
   unsigned intf_std = 0;
   int rv = FUNC0(stream, DIRECTION_IN, buf, sizeof(buf), cdb, sizeof(cdb), 0);
   int i;
   const char *intf_std_name = "Unknown";

   FUNC1("[CDROM] get current config core status code %d\n", rv);

   if (rv)
      return;

   FUNC1("[CDROM] Feature Header: ");

   for (i = 0; i < 8; i++)
   {
      FUNC1("%02X ", buf[i]);
   }

   FUNC1("\n");

   if (buf[6] == 0 && buf[7] == 8)
      FUNC1("[CDROM] Current Profile: CD-ROM\n");
   else
      FUNC1("[CDROM] Current Profile: %02X%02X\n", buf[6], buf[7]);

   FUNC1("[CDROM] Core Feature Descriptor: ");

   for (i = 0; i < 12; i++)
   {
      FUNC1("%02X ", buf[8 + i]);
   }

   FUNC1("\n");

   intf_std = buf[8 + 4] << 24 | buf[8 + 5] << 16 | buf[8 + 6] << 8 | buf[8 + 7];

   switch (intf_std)
   {
      case 0:
         intf_std_name = "Unspecified";
         break;
      case 1:
         intf_std_name = "SCSI Family";
         break;
      case 2:
         intf_std_name = "ATAPI";
         break;
      case 7:
         intf_std_name = "Serial ATAPI";
         break;
      case 8:
         intf_std_name = "USB";
         break;
      default:
         break;
   }

   FUNC1("[CDROM] Physical Interface Standard: %u (%s)\n", intf_std, intf_std_name);
}