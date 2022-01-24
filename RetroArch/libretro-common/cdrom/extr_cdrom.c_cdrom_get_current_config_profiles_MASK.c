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
 char* FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void FUNC3(libretro_vfs_implementation_file *stream)
{
   unsigned char cdb[] = {0x46, 0x2, 0, 0x0, 0, 0, 0, 0xFF, 0xFA, 0};
   unsigned char buf[0xFFFA] = {0};
   int rv = FUNC0(stream, DIRECTION_IN, buf, sizeof(buf), cdb, sizeof(cdb), 0);
   int i;

   FUNC2("[CDROM] get current config profiles status code %d\n", rv);

   if (rv)
      return;

   FUNC2("[CDROM] Feature Header: ");

   for (i = 0; i < 8; i++)
   {
      FUNC2("%02X ", buf[i]);
   }

   FUNC2("\n");

   FUNC2("[CDROM] Profile List Descriptor: ");

   for (i = 0; i < 4; i++)
   {
      FUNC2("%02X ", buf[8 + i]);
   }

   FUNC2("\n");

   FUNC2("[CDROM] Number of profiles: %u\n", buf[8 + 3] / 4);

   for (i = 0; i < buf[8 + 3] / 4; i++)
   {
      unsigned short profile = (buf[8 + (4 * (i + 1))] << 8) | buf[8 + (4 * (i + 1)) + 1];

      FUNC2("[CDROM] Profile Number: %04X (%s) ", profile, FUNC1(profile));

      if (buf[8 + (4 * (i + 1)) + 2] & 1)
         FUNC2("(current)\n");
      else
         FUNC2("\n");
   }
}