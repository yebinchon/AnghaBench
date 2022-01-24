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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void)
{
   FUNC1("Usage: vchiq_test [<options>] <mode> <iters>\n");
   FUNC1("  where <options> is any of:\n");
   FUNC1("    -a <c> <s>  set the client and server bulk alignment (modulo 32)\n");
   FUNC1("    -A <c> <s>  set the client and server bulk alignment (modulo 4096)\n");
   FUNC1("    -e          disable echoing in the main bulk transfer mode\n");
   FUNC1("    -k <n>      skip the first <n> func data tests\n");
   FUNC1("    -m <n>      set the client message quota to <n>\n");
   FUNC1("    -M <n>      set the server message quota to <n>\n");
   FUNC1("    -q          disable data verification\n");
   FUNC1("    -s ????     service (any 4 characters)\n");
   FUNC1("    -v          enable more verbose output\n");
   FUNC1("    -r <b> <s>  reserve <b> bytes for <s> seconds\n");
   FUNC1("    -K <t>      send a SIGKILL after <t> ms\n");
   FUNC1("  and <mode> is one of:\n");
   FUNC1("    -c <size>   control test (size in bytes)\n");
   FUNC1("    -b <size>   bulk test (size in kilobytes)\n");
   FUNC1("    -f          functional test\n");
   FUNC1("    -p          ping test\n");
   FUNC1("    -t          check the timer\n");
   FUNC1("  and <iters> is the number of test iterations\n");
   FUNC0(1);
}