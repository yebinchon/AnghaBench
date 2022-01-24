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
struct display {int options; char* output_file; int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 int NOWRITE ; 
 int /*<<< orphan*/  USER_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct display*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct display *dp, const char *filename)
{
   FUNC0(dp->fp == NULL);

   if ((dp->options & NOWRITE) != 0)
      dp->output_file = "<no write>";

   else
   {
      if (filename != NULL)
      {
         dp->output_file = filename;
         dp->fp = FUNC2(filename, "wb");
      }

      else
      {
         dp->output_file = "<stdout>";
         dp->fp = stdout;
      }

      if (dp->fp == NULL)
         FUNC1(dp, USER_ERROR, "%s: file open failed (%s)",
               dp->output_file, FUNC3(errno));
   }
}