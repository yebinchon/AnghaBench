
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int video_monitor_index; } ;
struct TYPE_5__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
typedef int fbname ;


 int RARCH_LOG (char*,char*) ;
 TYPE_2__* config_get_ptr () ;
 int snprintf (char*,int,char*,int const) ;

__attribute__((used)) static const char *omapfb_get_fb_device(void)
{
   static char fbname[12] = {0};
   settings_t *settings = config_get_ptr();
   const int fbidx = settings->uints.video_monitor_index;

   if (fbidx == 0)
      return "/dev/fb0";

   snprintf(fbname, sizeof(fbname), "/dev/fb%d", fbidx - 1);
   RARCH_LOG("[video_omap]: Using %s as framebuffer device.\n", fbname);
   return fbname;
}
