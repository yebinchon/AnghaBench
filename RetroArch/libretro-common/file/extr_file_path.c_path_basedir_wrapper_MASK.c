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
 char* FUNC0 (char*) ; 
 char* FUNC1 () ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int FUNC4 (char*) ; 

void FUNC5(char *path)
{
   char *last = NULL;
   if (FUNC4(path) < 2)
      return;

#ifdef HAVE_COMPRESSION
   /* We want to find the directory with the archive in basedir. */
   last = (char*)path_get_archive_delim(path);
   if (last)
      *last = '\0';
#endif

   last = FUNC0(path);

   if (last)
      last[1] = '\0';
   else
      FUNC3(path, 3, ".%s", FUNC1());
}