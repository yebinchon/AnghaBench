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
   FUNC0(stdout, "Runs camera for specific time, and take uncompressed YUV or RGB capture at end if requested\n\n");
   FUNC0(stdout, "usage: %s [options]\n\n", app_name);

   FUNC0(stdout, "Image parameter commands\n\n");

   FUNC1(cmdline_commands, cmdline_commands_size);

   return;
}