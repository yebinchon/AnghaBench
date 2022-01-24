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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1( void )
{
   FUNC0( "Usage: tvservice [OPTION]..." );
   FUNC0( "  -p, --preferred                   Power on HDMI with preferred settings" );
   FUNC0( "  -e, --explicit=\"GROUP MODE DRIVE\" Power on HDMI with explicit GROUP (CEA, DMT, CEA_3D_SBS, CEA_3D_TB, CEA_3D_FP, CEA_3D_FS)\n"
            "                                      MODE (see --modes) and DRIVE (HDMI, DVI)" );
   FUNC0( "  -t, --ntsc                        Use NTSC frequency for HDMI mode (e.g. 59.94Hz rather than 60Hz)" );
   FUNC0( "  -c, --sdtvon=\"MODE ASPECT [P]\"    Power on SDTV with MODE (PAL or NTSC) and ASPECT (4:3 14:9 or 16:9) Add P for progressive" );
   FUNC0( "  -o, --off                         Power off the display" );
   FUNC0( "  -m, --modes=GROUP                 Get supported modes for GROUP (CEA, DMT)" );
   FUNC0( "  -M, --monitor                     Monitor HDMI events" );
   FUNC0( "  -s, --status                      Get HDMI status" );
   FUNC0( "  -a, --audio                       Get supported audio information" );
   FUNC0( "  -d, --dumpedid <filename>         Dump EDID information to file" );
   FUNC0( "  -j, --json                        Use JSON format for --modes output" );
   FUNC0( "  -n, --name                        Print the device ID from EDID" );
   FUNC0( "  -h, --help                        Print this information" );
}