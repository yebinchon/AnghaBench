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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 (char const*,char) ; 

__attribute__((used)) static int FUNC2(int argc, const char **argv)
{
   const char *last_slash = FUNC1(argv[0], '/');
   const char *progname = last_slash ? last_slash+1:argv[0];
   (void)argc;
   FUNC0("usage: %s [command [args]]\n", progname);
   FUNC0("   %s commands - list available commands\n", progname);
   return 0;
}