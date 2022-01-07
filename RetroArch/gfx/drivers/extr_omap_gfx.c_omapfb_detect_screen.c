
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_rdev; } ;
struct TYPE_3__ {int nat_w; int nat_h; int fbname; } ;
typedef TYPE_1__ omapfb_data_t ;
typedef int manager_name ;
typedef int display_name ;
typedef int buff ;
typedef int FILE ;


 int RARCH_ERR (char*,...) ;
 int RARCH_LOG (char*,int,int,char*,int,int,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,int*,...) ;
 int minor (int ) ;
 int omapfb_read_sysfs (char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int stat (int ,struct stat*) ;
 scalar_t__ string_is_equal (char*,char*) ;

__attribute__((used)) static int omapfb_detect_screen(omapfb_data_t *pdata)
{
   struct stat status;
   int i, ret;
   int w, h;
   FILE *f;
   char buff[64];
   char manager_name[64];
   char display_name[64];
   int fb_id, overlay_id = -1, display_id = -1;

   buff[0] = manager_name[0] = display_name[0] = '\0';



   ret = stat(pdata->fbname, &status);

   if (ret != 0)
   {
      RARCH_ERR("[video_omap]: can't stat %s.\n", pdata->fbname);
      return -1;
   }
   fb_id = minor(status.st_rdev);

   snprintf(buff, sizeof(buff), "/sys/class/graphics/fb%d/overlays", fb_id);
   f = fopen(buff, "r");
   if (!f)
   {
      RARCH_ERR("[video_omap]: can't open %s.\n", buff);
      return -1;
   }

   ret = fscanf(f, "%d", &overlay_id);
   fclose(f);
   if (ret != 1)
   {
      RARCH_ERR("[video_omap]: can't parse %s.\n", buff);
      return -1;
   }

   snprintf(buff, sizeof(buff), "/sys/devices/platform/omapdss/overlay%d/manager", overlay_id);
   ret = omapfb_read_sysfs(buff, manager_name, sizeof(manager_name));
   if (ret < 0)
   {
      RARCH_ERR("[video_omap]: can't read manager name.\n");
      return -1;
   }

   for (i = 0; ; i++)
   {
      snprintf(buff, sizeof(buff), "/sys/devices/platform/omapdss/manager%d/name", i);
      ret = omapfb_read_sysfs(buff, buff, sizeof(buff));

      if (ret < 0)
         break;

      if (string_is_equal(manager_name, buff))
      {
         snprintf(buff, sizeof(buff), "/sys/devices/platform/omapdss/manager%d/display", i);
         ret = omapfb_read_sysfs(buff, display_name, sizeof(display_name));

         if (ret < 0)
         {
            RARCH_ERR("[video_omap]: can't read display name.\n");
            return -1;
         }

         break;
      }
   }

   if (ret < 0)
   {
      RARCH_ERR("[video_omap]: couldn't find manager.\n");
      return -1;
   }

   for (i = 0; ; i++)
   {
      snprintf(buff, sizeof(buff), "/sys/devices/platform/omapdss/display%d/name", i);
      ret = omapfb_read_sysfs(buff, buff, sizeof(buff));

      if (ret < 0)
         break;

      if (string_is_equal(display_name, buff))
      {
         display_id = i;
         break;
      }
   }

   if (display_id < 0)
   {
      RARCH_ERR("[video_omap]: couldn't find display.\n");
      return -1;
   }

   snprintf(buff, sizeof(buff), "/sys/devices/platform/omapdss/display%d/timings", display_id);
   f = fopen(buff, "r");
   if (!f)
   {
      RARCH_ERR("[video_omap]: can't open %s.\n", buff);
      return -1;
   }

   ret = fscanf(f, "%*d,%d/%*d/%*d/%*d,%d/%*d/%*d/%*d", &w, &h);
   fclose(f);
   if (ret != 2)
   {
      RARCH_ERR("[video_omap]: can't parse %s (%d).\n", buff, ret);
      return -1;
   }

   if (w <= 0 || h <= 0)
   {
      RARCH_ERR("[video_omap]: unsane dimensions detected (%dx%d).\n", w, h);
      return -1;
   }

   RARCH_LOG("[video_omap]: detected %dx%d '%s' (%d) display attached to fb %d and overlay %d.\n",
         w, h, display_name, display_id, fb_id, overlay_id);

   pdata->nat_w = w;
   pdata->nat_h = h;

   return 0;
}
