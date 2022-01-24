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
struct display {char const* filename; unsigned int w; unsigned int h; unsigned int bpp; unsigned int size; unsigned int read_size; int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  USER_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct display*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct display *dp, const char *filename)
{
   if (filename != NULL)
   {
      dp->filename = filename;
      dp->fp = FUNC1(filename, "rb");
   }

   else
   {
      dp->filename = "<stdin>";
      dp->fp = stdin;
   }

   dp->w = dp->h = 0U;
   dp->bpp = 0U;
   dp->size = 0U;
   dp->read_size = 0U;

   if (dp->fp == NULL)
      FUNC0(dp, USER_ERROR, "file open failed (%s)", FUNC2(errno));
}