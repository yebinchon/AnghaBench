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
struct display {char const* filename; int /*<<< orphan*/  original_file; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  APP_ERROR ; 
 int /*<<< orphan*/  USER_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct display*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct display *dp, const char *filename)
   /* Does the initial cache of the file. */
{
   FILE *fp;
   int ret;

   dp->filename = filename;

   if (filename != NULL)
   {
      fp = FUNC3(filename, "rb");
      if (fp == NULL)
         FUNC1(dp, USER_ERROR, "open failed: %s", FUNC4(errno));
   }

   else
      fp = stdin;

   ret = FUNC0(&dp->original_file, fp);

   FUNC2(fp);

   if (ret != 0)
      FUNC1(dp, APP_ERROR, "read failed: %s", FUNC4(ret));
}