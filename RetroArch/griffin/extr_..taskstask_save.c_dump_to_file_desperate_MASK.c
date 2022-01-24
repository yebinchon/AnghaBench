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
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC9(const void *data,
      size_t size, unsigned type)
{
   time_t time_;
   char *timebuf;
   char *path;
   char *application_data = (char*)FUNC5(PATH_MAX_LENGTH * sizeof(char));
   application_data[0]    = '\0';

   if (!FUNC2(application_data,
            PATH_MAX_LENGTH * sizeof(char)))
   {
      FUNC3(application_data);
      return false;
   }

   FUNC8(&time_);

   timebuf    = (char*)FUNC5(256 * sizeof(char));
   timebuf[0] = '\0';

   FUNC7(timebuf,
         256 * sizeof(char),
         "%Y-%m-%d-%H-%M-%S", FUNC4(&time_));

   path    = (char*)FUNC5(PATH_MAX_LENGTH * sizeof(char));
   path[0] = '\0';
   FUNC6(path,
         PATH_MAX_LENGTH * sizeof(char),
         "%s/RetroArch-recovery-%u%s",
         application_data, type,
         timebuf);

   FUNC3(application_data);
   FUNC3(timebuf);

   if (!FUNC1(path, data, size))
   {
      FUNC3(path);
      return false;
   }

   FUNC0("Succeeded in saving RAM data to \"%s\".\n", path);
   FUNC3(path);
   return true;
}