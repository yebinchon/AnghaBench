
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sms_ntsc_t ;
typedef int md_ntsc_t ;


 int RETRO_ENVIRONMENT_SET_PERFORMANCE_LEVEL ;
 int RETRO_ENVIRONMENT_SET_PIXEL_FORMAT ;
 unsigned int RETRO_PIXEL_FORMAT_RGB565 ;
 void* calloc (int,int) ;
 scalar_t__ environ_cb (int ,unsigned int*) ;
 int fprintf (int ,char*) ;
 void* md_ntsc ;
 int md_ntsc_composite ;
 int md_ntsc_init (void*,int *) ;
 void* sms_ntsc ;
 int sms_ntsc_composite ;
 int sms_ntsc_init (void*,int *) ;
 int stderr ;

void retro_init(void)
{
 unsigned level, rgb565;







   level = 1;
   environ_cb(RETRO_ENVIRONMENT_SET_PERFORMANCE_LEVEL, &level);






}
