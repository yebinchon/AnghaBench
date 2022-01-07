
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int font_driver_free (int *) ;
 int * video_font_driver ;

void font_driver_free_osd(void)
{
   if (video_font_driver)
      font_driver_free(video_font_driver);

   video_font_driver = ((void*)0);
}
