
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float DEFAULT_MENU_THUMBNAIL_FADE_DURATION ;
 float menu_thumbnail_fade_duration ;

void menu_thumbnail_set_fade_duration(float duration)
{
   menu_thumbnail_fade_duration = (duration >= 0.0f) ?
         duration : DEFAULT_MENU_THUMBNAIL_FADE_DURATION;
}
