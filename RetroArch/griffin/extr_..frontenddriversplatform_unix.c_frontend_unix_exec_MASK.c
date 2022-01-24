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
 int /*<<< orphan*/  FUNC0 (char const*,char**) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(const char *path, bool should_load_game)
{
   char *newargv[]    = { NULL, NULL };
   size_t len         = FUNC3(path);

   newargv[0] = (char*)FUNC1(len);

   FUNC2(newargv[0], path, len);

   FUNC0(path, newargv);
}