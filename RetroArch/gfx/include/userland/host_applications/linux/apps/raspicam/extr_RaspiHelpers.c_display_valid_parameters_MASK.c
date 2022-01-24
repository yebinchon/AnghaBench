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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stdout ; 
 void FUNC5 (char*) ; 

void FUNC6(char *name, void (*app_help)(char*))
{
   FUNC1(stdout);

   // This should be defined in the main app source code
   if (app_help)
      (*app_help)(name);

   // general settings
   FUNC3();

   // Help for preview options
   FUNC4();

   // Now display any help information from the camcontrol code
   FUNC2();

   FUNC0(stdout, "\n");
}