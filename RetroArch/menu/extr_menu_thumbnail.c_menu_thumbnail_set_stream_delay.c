
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float DEFAULT_MENU_THUMBNAIL_STREAM_DELAY ;
 float menu_thumbnail_stream_delay ;

void menu_thumbnail_set_stream_delay(float delay)
{
   menu_thumbnail_stream_delay = (delay >= 0.0f) ?
         delay : DEFAULT_MENU_THUMBNAIL_STREAM_DELAY;
}
