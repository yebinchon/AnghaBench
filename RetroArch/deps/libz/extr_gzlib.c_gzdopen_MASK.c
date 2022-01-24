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
typedef  int /*<<< orphan*/ * gzFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,char const*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

gzFile FUNC5(int fd, const char *mode)
{
   char *path;         /* identifier for error messages */
   gzFile gz;

   if (fd == -1 || (path = (char *)FUNC2(7 + 3 * sizeof(int))) == NULL)
      return NULL;
#if !defined(NO_snprintf) && !defined(NO_vsnprintf)
   FUNC3(path, 7 + 3 * sizeof(int), "<fd:%d>", fd); /* for debugging */
#else
   sprintf(path, "<fd:%d>", fd);   /* for debugging */
#endif
   gz = FUNC1(path, fd, mode);
   FUNC0(path);
   return gz;
}