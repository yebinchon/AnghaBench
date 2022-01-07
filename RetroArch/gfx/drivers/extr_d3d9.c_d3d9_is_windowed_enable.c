
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int video_windowed_fullscreen; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;


 TYPE_2__* config_get_ptr () ;

__attribute__((used)) static bool d3d9_is_windowed_enable(bool info_fullscreen)
{

   settings_t *settings = config_get_ptr();
   if (!info_fullscreen)
      return 1;
   if (settings)
      return settings->bools.video_windowed_fullscreen;

   return 0;
}
