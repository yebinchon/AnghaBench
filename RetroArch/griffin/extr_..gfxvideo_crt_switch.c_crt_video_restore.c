
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int first_run ;

void crt_video_restore(void)
{
   if (first_run)
      return;

   first_run = 1;
}
