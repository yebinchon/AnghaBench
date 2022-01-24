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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct display {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USER_ERROR ; 
 int /*<<< orphan*/  W_OK ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct display*,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC3 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct display *dp, const char *pathname)
{
   if (pathname == NULL)
      return 0; /* stdout */

   else if (pathname[0] == 0)
      return 1; /* empty string */

   else
   {
      struct stat buf;
      int ret = FUNC3(pathname, &buf);

      if (ret == 0) /* the entry exists */
      {
         if (FUNC0(buf.st_mode))
            return 1;

         /* Else expect an object that exists and can be written: */
         if (FUNC1(pathname, W_OK) != 0)
            FUNC2(dp, USER_ERROR, "%s: cannot be written (%s)", pathname,
                  FUNC4(errno));

         return 0; /* file (exists, can be written) */
      }

      else /* an error */
      {
         /* Non-existence is fine, other errors are not: */
         if (errno != ENOENT)
            FUNC2(dp, USER_ERROR, "%s: invalid output name (%s)",
                  pathname, FUNC4(errno));

         return 0; /* file (does not exist) */
      }
   }
}