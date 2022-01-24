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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static FILE * FUNC3(const wchar_t *wpath, const wchar_t *wmode)
{
   FILE * fd;
   char * path;
   char * mode;

   path = FUNC2(wpath);
   if (path == NULL) return NULL;

   mode = FUNC2(wmode);
   if (mode == NULL)
   {
      FUNC1(path);
      return NULL;
   }

   fd = FUNC0(path, mode);

   FUNC1(path);
   FUNC1(mode);

   return fd;
}