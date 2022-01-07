
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dummy_frame_buf ;
 int free (int *) ;

void libretro_dummy_retro_deinit(void)
{
   if (dummy_frame_buf)
      free(dummy_frame_buf);
   dummy_frame_buf = ((void*)0);
}
