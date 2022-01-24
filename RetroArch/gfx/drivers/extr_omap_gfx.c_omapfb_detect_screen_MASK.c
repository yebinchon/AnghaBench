#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_rdev; } ;
struct TYPE_3__ {int nat_w; int nat_h; int /*<<< orphan*/  fbname; } ;
typedef  TYPE_1__ omapfb_data_t ;
typedef  int /*<<< orphan*/  manager_name ;
typedef  int /*<<< orphan*/  display_name ;
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(omapfb_data_t *pdata)
{
   struct stat status;
   int i, ret;
   int w, h;
   FILE *f;
   char buff[64];
   char manager_name[64];
   char display_name[64];
   int fb_id, overlay_id = -1, display_id      = -1;

   buff[0] = manager_name[0] = display_name[0] = '\0';

   /* Find out the native screen resolution, which is needed to
    * properly center the scaled image data. */
   ret = FUNC8(pdata->fbname, &status);

   if (ret != 0)
   {
      FUNC0("[video_omap]: can't stat %s.\n", pdata->fbname);
      return -1;
   }
   fb_id = FUNC5(status.st_rdev);

   FUNC7(buff, sizeof(buff), "/sys/class/graphics/fb%d/overlays", fb_id);
   f = FUNC3(buff, "r");
   if (!f)
   {
      FUNC0("[video_omap]: can't open %s.\n", buff);
      return -1;
   }

   ret = FUNC4(f, "%d", &overlay_id);
   FUNC2(f);
   if (ret != 1)
   {
      FUNC0("[video_omap]: can't parse %s.\n", buff);
      return -1;
   }

   FUNC7(buff, sizeof(buff), "/sys/devices/platform/omapdss/overlay%d/manager", overlay_id);
   ret = FUNC6(buff, manager_name, sizeof(manager_name));
   if (ret < 0)
   {
      FUNC0("[video_omap]: can't read manager name.\n");
      return -1;
   }

   for (i = 0; ; i++)
   {
      FUNC7(buff, sizeof(buff), "/sys/devices/platform/omapdss/manager%d/name", i);
      ret = FUNC6(buff, buff, sizeof(buff));

      if (ret < 0)
         break;

      if (FUNC9(manager_name, buff))
      {
         FUNC7(buff, sizeof(buff), "/sys/devices/platform/omapdss/manager%d/display", i);
         ret = FUNC6(buff, display_name, sizeof(display_name));

         if (ret < 0)
         {
            FUNC0("[video_omap]: can't read display name.\n");
            return -1;
         }

         break;
      }
   }

   if (ret < 0)
   {
      FUNC0("[video_omap]: couldn't find manager.\n");
      return -1;
   }

   for (i = 0; ; i++)
   {
      FUNC7(buff, sizeof(buff), "/sys/devices/platform/omapdss/display%d/name", i);
      ret = FUNC6(buff, buff, sizeof(buff));

      if (ret < 0)
         break;

      if (FUNC9(display_name, buff))
      {
         display_id = i;
         break;
      }
   }

   if (display_id < 0)
   {
      FUNC0("[video_omap]: couldn't find display.\n");
      return -1;
   }

   FUNC7(buff, sizeof(buff), "/sys/devices/platform/omapdss/display%d/timings", display_id);
   f = FUNC3(buff, "r");
   if (!f)
   {
      FUNC0("[video_omap]: can't open %s.\n", buff);
      return -1;
   }

   ret = FUNC4(f, "%*d,%d/%*d/%*d/%*d,%d/%*d/%*d/%*d", &w, &h);
   FUNC2(f);
   if (ret != 2)
   {
      FUNC0("[video_omap]: can't parse %s (%d).\n", buff, ret);
      return -1;
   }

   if (w <= 0 || h <= 0)
   {
      FUNC0("[video_omap]: unsane dimensions detected (%dx%d).\n", w, h);
      return -1;
   }

   FUNC1("[video_omap]: detected %dx%d '%s' (%d) display attached to fb %d and overlay %d.\n",
         w, h, display_name, display_id, fb_id, overlay_id);

   pdata->nat_w = w;
   pdata->nat_h = h;

   return 0;
}