
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crt_center_adjust ;
 int crt_check_first_run () ;
 unsigned int crt_compute_dynamic_width (unsigned int) ;
 int crt_index ;
 int crt_screen_setup_aspect (unsigned int,unsigned int) ;
 int crt_tmp_center_adjust ;
 scalar_t__ fly_aspect ;
 unsigned int ra_core_height ;
 float ra_core_hz ;
 unsigned int ra_core_width ;
 unsigned int ra_tmp_height ;
 unsigned int ra_tmp_width ;
 int video_driver_apply_state_changes () ;
 scalar_t__ video_driver_get_aspect_ratio () ;
 int video_driver_set_aspect_ratio_value (float) ;

void crt_switch_res_core(unsigned width, unsigned height,
      float hz, unsigned crt_mode,
      int crt_switch_center_adjust, int monitor_index, bool dynamic)
{


   if (width == 4)
   {
      width = 320;
      height = 240;
   }

   ra_core_height = height;
   ra_core_hz = hz;

   if (dynamic)
      ra_core_width = crt_compute_dynamic_width(width);
   else
      ra_core_width = width;

   crt_center_adjust = crt_switch_center_adjust;
   crt_index = monitor_index;

   if (crt_mode == 2)
   {
      if (hz > 53)
         ra_core_hz = hz * 2;

      if (hz <= 53)
         ra_core_hz = 120.0f;
   }

   crt_check_first_run();


   if (
      (ra_tmp_height != ra_core_height) ||
      (ra_core_width != ra_tmp_width) || (crt_center_adjust != crt_tmp_center_adjust)
      )
      crt_screen_setup_aspect(ra_core_width, ra_core_height);

   ra_tmp_height = ra_core_height;
   ra_tmp_width = ra_core_width;
    crt_tmp_center_adjust = crt_center_adjust;


   if (video_driver_get_aspect_ratio() != fly_aspect)
   {
      video_driver_set_aspect_ratio_value((float)fly_aspect);
      video_driver_apply_state_changes();
   }
}
