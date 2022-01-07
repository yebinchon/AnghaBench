
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int str ;
struct TYPE_4__ {unsigned int video_fullscreen_x; unsigned int video_fullscreen_y; } ;
struct TYPE_5__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;


 TYPE_2__* config_get_ptr () ;
 int snprintf (char*,int,char*,char const*) ;
 char* strtok (char*,char*) ;
 scalar_t__ strtoul (char*,int *,int ) ;
 scalar_t__ video_display_server_set_resolution (unsigned int,unsigned int,unsigned int,float,int ,int ,int ) ;
 int video_monitor_set_refresh_rate (float) ;

int action_cb_push_dropdown_item_resolution(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char str[100];
   char *pch = ((void*)0);
   unsigned width = 0;
   unsigned height = 0;
   unsigned refreshrate = 0;

   (void)label;
   (void)type;
   (void)idx;
   (void)entry_idx;

   snprintf(str, sizeof(str), "%s", path);

   pch = strtok(str, "x");
   if (pch)
      width = (unsigned)strtoul(pch, ((void*)0), 0);
   pch = strtok(((void*)0), " ");
   if (pch)
      height = (unsigned)strtoul(pch, ((void*)0), 0);
   pch = strtok(((void*)0), "(");
   if (pch)
      refreshrate = (unsigned)strtoul(pch, ((void*)0), 0);

   if (video_display_server_set_resolution(width, height,
         refreshrate, (float)refreshrate, 0, 0, 0))
   {
      settings_t *settings = config_get_ptr();

      video_monitor_set_refresh_rate((float)refreshrate);

      settings->uints.video_fullscreen_x = width;
      settings->uints.video_fullscreen_y = height;

      return 1;
   }

   return 0;
}
