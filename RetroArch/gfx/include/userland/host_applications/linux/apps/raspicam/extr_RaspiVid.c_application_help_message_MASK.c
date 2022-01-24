#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* mode; } ;
struct TYPE_7__ {char* mode; } ;
struct TYPE_6__ {char* mode; } ;
struct TYPE_5__ {char* mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  cmdline_commands ; 
 int /*<<< orphan*/  cmdline_commands_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_4__* intra_refresh_map ; 
 int intra_refresh_map_size ; 
 TYPE_3__* level_map ; 
 int level_map_size ; 
 TYPE_2__* profile_map ; 
 int profile_map_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* raw_output_fmt_map ; 
 int raw_output_fmt_map_size ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(char *app_name)
{
   int i;

   FUNC0(stdout, "Display camera output to display, and optionally saves an H264 capture at requested bitrate\n\n");
   FUNC0(stdout, "\nusage: %s [options]\n\n", app_name);

   FUNC0(stdout, "Image parameter commands\n\n");

   FUNC1(cmdline_commands, cmdline_commands_size);

   // Profile options
   FUNC0(stdout, "\n\nH264 Profile options :\n%s", profile_map[0].mode );

   for (i=1; i<profile_map_size; i++)
   {
      FUNC0(stdout, ",%s", profile_map[i].mode);
   }

   // Level options
   FUNC0(stdout, "\n\nH264 Level options :\n%s", level_map[0].mode );

   for (i=1; i<level_map_size; i++)
   {
      FUNC0(stdout, ",%s", level_map[i].mode);
   }

   // Intra refresh options
   FUNC0(stdout, "\n\nH264 Intra refresh options :\n%s", intra_refresh_map[0].mode );

   for (i=1; i<intra_refresh_map_size; i++)
   {
      FUNC0(stdout, ",%s", intra_refresh_map[i].mode);
   }

   // Raw output format options
   FUNC0(stdout, "\n\nRaw output format options :\n%s", raw_output_fmt_map[0].mode );

   for (i=1; i<raw_output_fmt_map_size; i++)
   {
      FUNC0(stdout, ",%s", raw_output_fmt_map[i].mode);
   }

   FUNC0(stdout, "\n\n");

   FUNC0(stdout, "Raspivid allows output to a remote IPv4 host e.g. -o tcp://192.168.1.2:1234"
           "or -o udp://192.168.1.2:1234\n"
           "To listen on a TCP port (IPv4) and wait for an incoming connection use the -l option\n"
           "e.g. raspivid -l -o tcp://0.0.0.0:3333 -> bind to all network interfaces,\n"
           "raspivid -l -o tcp://192.168.1.1:3333 -> bind to a certain local IPv4 port\n");

   return;
}