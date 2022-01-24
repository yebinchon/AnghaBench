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
struct dirent {char const* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(char* path_return)
{
   DIR* dir;
   struct dirent* ent;
   const char* extension = FUNC1() ? ".3dsx" : ".cia";

   path_return[0] = '\0';

   dir = FUNC2("sdmc:/retroarch/cores");
   if (dir != NULL)
   {
      while ((ent = FUNC3(dir)))
      {
         if (ent == NULL)
            break;
         if (FUNC7(ent->d_name) > FUNC7(extension) && !FUNC5(ent->d_name + FUNC7(ent->d_name) - FUNC7(extension), extension))
         {
            FUNC6(path_return, "sdmc:/retroarch/cores");
            FUNC4(path_return, "/");
            FUNC4(path_return, ent->d_name);
            break;
         }
      }
      FUNC0(dir);
   }
}