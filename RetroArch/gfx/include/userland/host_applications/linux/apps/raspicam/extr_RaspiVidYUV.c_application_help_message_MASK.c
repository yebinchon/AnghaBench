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
 int /*<<< orphan*/  cmdline_commands ; 
 int /*<<< orphan*/  cmdline_commands_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2(char *app_name)
{
   FUNC0(stdout, "Display camera output to display, and optionally saves an uncompressed YUV420 or RGB file \n\n");
   FUNC0(stdout, "NOTE: High resolutions and/or frame rates may exceed the bandwidth of the system due\n");
   FUNC0(stdout, "to the large amounts of data being moved to the SD card. This will result in undefined\n");
   FUNC0(stdout, "results in the subsequent file.\n");
   FUNC0(stdout, "The single raw file produced contains all the images. Each image in the files will be of size\n");
   FUNC0(stdout, "width*height*1.5 for YUV or width*height*3 for RGB, unless width and/or height are not divisible by 16.");
   FUNC0(stdout, "Use the image size displayed during the run (in verbose mode) for an accurate value\n");

   FUNC0(stdout, "The Linux split command can be used to split up the file to individual frames\n");

   FUNC0(stdout, "\nusage: %s [options]\n\n", app_name);

   FUNC0(stdout, "Image parameter commands\n\n");

   FUNC1(cmdline_commands, cmdline_commands_size);

   FUNC0(stdout, "\n");

   return;
}