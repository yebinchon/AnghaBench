#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  str ;
struct TYPE_4__ {unsigned int video_fullscreen_x; unsigned int video_fullscreen_y; } ;
struct TYPE_5__ {TYPE_1__ uints; } ;
typedef  TYPE_2__ settings_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*) ; 
 char* FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned int,unsigned int,unsigned int,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (float) ; 

int FUNC6(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char str[100];
   char *pch            = NULL;
   unsigned width       = 0;
   unsigned height      = 0;
   unsigned refreshrate = 0;

   (void)label;
   (void)type;
   (void)idx;
   (void)entry_idx;

   FUNC1(str, sizeof(str), "%s", path);

   pch = FUNC2(str, "x");
   if (pch)
      width = (unsigned)FUNC3(pch, NULL, 0);
   pch = FUNC2(NULL, " ");
   if (pch)
      height = (unsigned)FUNC3(pch, NULL, 0);
   pch = FUNC2(NULL, "(");
   if (pch)
      refreshrate = (unsigned)FUNC3(pch, NULL, 0);

   if (FUNC4(width, height,
         refreshrate, (float)refreshrate, 0, 0, 0))
   {
      settings_t *settings = FUNC0();

      FUNC5((float)refreshrate);

      settings->uints.video_fullscreen_x = width;
      settings->uints.video_fullscreen_y = height;

      return 1;
   }

   return 0;
}