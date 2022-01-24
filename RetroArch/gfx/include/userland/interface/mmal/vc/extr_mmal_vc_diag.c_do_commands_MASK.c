#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; char* descr; } ;

/* Variables and functions */
 TYPE_1__* cmds ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 

__attribute__((used)) static int FUNC1(int argc, const char **argv)
{
   int i = 0;
   (void)argc; (void)argv;
   while (cmds[i].name)
   {
      FUNC0("%-20s %s\n", cmds[i].name, cmds[i].descr);
      i++;
   }
   return 0;
}